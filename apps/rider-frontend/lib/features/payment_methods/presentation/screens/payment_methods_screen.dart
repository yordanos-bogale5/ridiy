// ignore_for_file: use_build_context_synchronously
import 'package:api_response/api_response.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/enums/card_type.dart';
import 'package:flutter_common/core/enums/gateway_link_method.dart';
import 'package:ionicons/ionicons.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:flutter_common/core/entities/payment_gateway.dart';
import 'package:rider_flutter/core/blocs/payment_methods.bloc.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_bordered_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_top_bar.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:rider_flutter/core/graphql/fragments/payment_gateway.extentions.dart';
import 'package:rider_flutter/core/graphql/fragments/saved_payment_method.extentions.dart';
import 'package:rider_flutter/core/repositories/payment_methods_repository.dart';
import 'package:rider_flutter/features/payment_methods/presentation/dialogs/add_payment_method_dialog.dart';
import 'package:rider_flutter/features/payment_methods/presentation/screens/add_card_details_dialog.dart';
import 'package:rider_flutter/gen/assets.gen.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter_common/features/wallet/wallet.dart';

@RoutePage()
class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  late final AppLifecycleListener lifecycleListener;
  @override
  void initState() {
    lifecycleListener = AppLifecycleListener(
      onResume: () {
        locator<PaymentMethodsBloc>().load();
      },
    );
    locator<PaymentMethodsBloc>().load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<PaymentMethodsBloc>(),
      child: Container(
        color: context.theme.scaffoldBackgroundColor,
        padding: EdgeInsets.symmetric(
          horizontal: context.responsive(16, xl: 24),
          vertical: context.responsive(
            16,
            xl: 24,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              context.responsive(
                const SizedBox(),
                xl: const SizedBox(
                  height: 80,
                ),
              ),
              AppTopBar(title: context.translate.paymentMethods),
              const SizedBox(
                height: 24,
              ),
              Text(
                context.translate.selectCards,
                style: context.titleMedium,
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                context.translate.selectCardsDescription,
                style: context.bodyMedium,
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: BlocBuilder<PaymentMethodsBloc, PaymentMethodsState>(
                  builder: (context, state) {
                    return AnimatedSwitcher(
                      duration: AnimationDuration.pageStateTransitionMobile,
                      child: switch (state.allPaymentMethodsResponse) {
                        ApiResponseInitial() => const SizedBox(),
                        ApiResponseLoading() => Assets.lottie.loading.lottie(
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ApiResponseLoaded() => Container(
                            constraints: context.responsive(
                              null,
                              xl: const BoxConstraints(maxWidth: 400),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: AppBorderedButton(
                                    onPressed: () async {
                                      final result = await showDialog(
                                        context: context,
                                        useSafeArea: false,
                                        builder: (context) => AddPaymentMethodDialog(
                                          paymentGateways:
                                              state.paymentGateways.data?.map((gw) => gw.toEntity).toList() ?? [],
                                        ),
                                      ) as PaymentGatewayEntity?;
                                      if (result != null) {
                                        if (result.linkMethod == GatewayLinkMethod.redirect) {
                                          final url = await locator<PaymentMethodsRepository>().getExternalUrl(
                                            paymentGatewayId: result.id,
                                          );

                                          switch (url) {
                                            case ApiResponseLoaded(:final data):
                                              launchUrlString(
                                                data,
                                                mode: LaunchMode.externalApplication,
                                              );
                                            case ApiResponseError(:final message):
                                              context.showSnackBar(message: message);

                                            case _:
                                          }
                                        } else {
                                          showDialog(
                                            context: context,
                                            useSafeArea: false,
                                            builder: (context) => const AddCardDetailsDialog(),
                                          );
                                        }
                                      }
                                    },
                                    icon: Ionicons.add_circle,
                                    title: context.translate.addCard,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: (state.savedPaymentMethods.data ?? []).map(
                                        (e) {
                                          final entity = e.toEntity;
                                          return Padding(
                                            padding: const EdgeInsets.only(bottom: 16, left: 8, right: 8),
                                            child: SavedCard(
                                              accountHolderName: entity.cardHolderName,
                                              accountNumber: '**** **** **** ${entity.last4Digits}',
                                              cardImage: entity.cardImage.provider(),
                                              bankName: entity.cardType.title(context),
                                              icon: entity.cardType.icon.image(width: 24, height: 24),
                                              isDefault: entity.isDefault,
                                              deletePressed: null,
                                              markAsDefaultPressed: (value) {
                                                locator<PaymentMethodsBloc>().markAsDefault(
                                                  paymentMethodId: e.id,
                                                );
                                              },
                                            ),
                                          );
                                        },
                                      ).toList(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ApiResponseError(:final message) => Center(child: Text(message)),
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
