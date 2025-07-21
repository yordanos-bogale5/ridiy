import 'package:driver_flutter/core/graphql/documents/wallet.graphql.dart';
import 'package:driver_flutter/core/graphql/fragments/wallet.extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';

class WalletTransactionItem extends StatelessWidget {
  final Query$Wallet$driverTransacions$edges$node transaction;

  const WalletTransactionItem({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: ColorPalette.primary95),
          color: ColorPalette.neutral99,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorPalette.neutralVariant99,
                border: Border.all(
                  color: ColorPalette.neutral90,
                ),
              ),
              child: Icon(
                transaction.icon,
                color: transaction.deductType == null ? ColorPalette.tertiary60 : ColorPalette.primary30,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction.title(context),
                    style: context.labelLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    transaction.formattedDatetime,
                    style: context.bodyMedium?.copyWith(
                      color: context.theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              transaction.formattedPrice,
              style: context.labelLarge,
            ),
          ],
        ));
  }
}
