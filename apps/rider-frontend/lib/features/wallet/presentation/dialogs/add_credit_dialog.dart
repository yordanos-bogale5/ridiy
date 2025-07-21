import 'package:api_response/api_response.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:flutter_common/core/presentation/snackbar/snackbar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/core/blocs/payment_methods.bloc.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_primary_button.dart';
import 'package:flutter_common/core/presentation/responsive_dialog/app_responsive_dialog.dart';
import 'package:flutter_common/core/presentation/app_segmented_amount_field.dart';
import 'package:flutter_common/core/presentation/payment_method_list_view.dart';
import 'package:rider_flutter/core/graphql/schema.gql.dart';
import 'package:rider_flutter/features/wallet/presentation/blocs/top_up_wallet.bloc.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../blocs/wallet.bloc.dart';

class AddCreditDialog extends StatefulWidget {
  final String currency;

  const AddCreditDialog({
    super.key,
    required this.currency,
  });

  @override
  State<AddCreditDialog> createState() => _AddCreditDialogState();
}

class _AddCreditDialogState extends State<AddCreditDialog> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  double? amount;
  PaymentMethodUnion? paymentMethodUnion;

  @override
  void initState() {
    locator<PaymentMethodsBloc>().load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(
          value: locator<TopUpWalletBloc>(),
        ),
        BlocProvider.value(
          value: locator<PaymentMethodsBloc>(),
        ),
      ],
      child: AppResponsiveDialog(
        type: context.responsive(
          DialogType.bottomSheet,
          xl: DialogType.dialog,
        ),
        onBackPressed: () => context.router.maybePop(),
        header: (Ionicons.wallet, context.translate.addCreditToWallet, null),
        primaryButton: BlocConsumer<TopUpWalletBloc, TopUpWalletState>(
          listener: (context, state) {
            switch (state.topUpWalletState) {
              case ApiResponseLoaded(:final data):
                switch (data.topUpWallet.status) {
                  case Enum$TopUpWalletStatus.Redirect:
                    Navigator.of(context).maybePop();
                    launchUrlString(
                      data.topUpWallet.url!,
                      mode: LaunchMode.externalApplication,
                    );

                  case Enum$TopUpWalletStatus.OK:
                    Navigator.of(context).maybePop();
                    if (data.topUpWallet.url != null) {
                      launchUrlString(
                        data.topUpWallet.url!,
                        mode: LaunchMode.externalApplication,
                      );
                      return;
                    }
                    locator<WalletBloc>().fetchWalletData();
                    context.showSnackBar(
                      message: context.translate.topUpSuccess,
                    );

                  case Enum$TopUpWalletStatus.Failed:
                    Navigator.of(context).maybePop();
                    context.showSnackBar(
                      message: data.topUpWallet.error ?? context.translate.somethingWentWrong,
                    );
                  case Enum$TopUpWalletStatus.$unknown:
                    throw Exception("Unknown top-up wallet status: ${data.topUpWallet.status}");
                }

              case ApiResponseError(:final errorMessage):
                Navigator.of(context).maybePop();
                context.showSnackBar(
                  message: errorMessage ?? context.translate.somethingWentWrong,
                );

              case _:
            }
          },
          builder: (context, state) {
            return AppPrimaryButton(
              isDisabled: switch (state) {
                ApiResponseLoading() => true,
                _ => false,
              },
              onPressed: () {
                if (formKey.currentState?.validate() == true) {
                  formKey.currentState?.save();
                  locator<TopUpWalletBloc>().fetchTopUpWallet(
                    paymentMode: paymentMethodUnion!.paymentMode,
                    paymentMethodId: paymentMethodUnion!.id ?? "0",
                    currency: widget.currency,
                    amount: amount!,
                  );
                }
              },
              child: Text(
                context.translate.payNow,
              ),
            );
          },
        ),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.translate.selectAmount,
                style: context.titleSmall,
              ),
              const SizedBox(height: 16),
              Center(
                child: SegmentedAmountField(
                  amounts: Constants.walletPresets,
                  currency: widget.currency,
                  onAmountChanged: (value) {
                    amount = value;
                  },
                  onSaved: (value) {
                    amount = value;
                  },
                ),
              ),
              const SizedBox(height: 16),
              FormField<PaymentMethodUnion>(
                onSaved: (value) => paymentMethodUnion = value,
                builder: (state) {
                  return BlocBuilder<PaymentMethodsBloc, PaymentMethodsState>(
                    builder: (context, blocState) {
                      return PaymentMethodListView(
                        paymentMethods: blocState.allPaymentMethods,
                        selectedPaymentMethod: state.value,
                        onSelected: (method) {
                          state.didChange(method);
                        },
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
