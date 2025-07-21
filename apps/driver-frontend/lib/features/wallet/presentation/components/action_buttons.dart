import 'package:api_response/api_response.dart';
import 'package:collection/collection.dart';
import 'package:driver_flutter/core/graphql/fragments/payment_gateway.extentions.dart';
import 'package:driver_flutter/core/graphql/fragments/saved_payment_method.extentions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/entities/payment_method_union.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/features/redeem_gift_card/presentation/dialogs/redeem_gift_card_dialog.dart';
import 'package:driver_flutter/features/wallet/presentation/blocs/wallet.bloc.dart';
import 'package:driver_flutter/features/wallet/presentation/dialogs/add_credit_dialog.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: ColorPalette.neutralVariant99,
        border: Border.all(
          color: ColorPalette.primary95,
        ),
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0x1464748B),
            blurRadius: 8,
            offset: Offset(2, 4),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorPalette.primary95,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              onPressed: () {
                showDialog(
                  context: context,
                  useSafeArea: false,
                  builder: (context) {
                    return const RedeemGiftCardDialog();
                  },
                );
              }, minimumSize: Size(0, 0),
              child: Row(
                children: [
                  const Icon(
                    Ionicons.gift,
                    color: ColorPalette.primary80,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    context.translate.redeemGiftCard,
                    style: context.labelLarge,
                  ),
                ],
              ),
            ),
            Container(
              width: 1,
              height: 32,
              color: ColorPalette.primary95,
            ),
            CupertinoButton(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              onPressed: () {
                switch (locator<WalletBloc>().state.walletState) {
                  case ApiResponseLoaded(:final data):
                    showDialog(
                      context: context,
                      useSafeArea: false,
                      builder: (context) => AddCreditDialog(
                        currency:
                            data.driver.wallet.sorted((a, b) => a.balance.compareTo(b.balance)).firstOrNull?.currency ??
                                'USD',
                        paymentMethods: (
                          data.paymentGateways.toEntity,
                          data.savedPaymentMethods.toEntity,
                        ).toPaymentMethodUnion,
                      ),
                    );
                    break;

                  default:
                    throw Exception('Invalid wallet state');
                }
              }, minimumSize: Size(0, 0),
              child: Row(
                children: [
                  const Icon(
                    Ionicons.add_circle,
                    color: ColorPalette.primary80,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    context.translate.addCredit,
                    style: context.labelLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
