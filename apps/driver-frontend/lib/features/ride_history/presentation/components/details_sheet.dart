import 'package:driver_flutter/core/graphql/fragments/current_order.extentions.dart';
import 'package:driver_flutter/core/graphql/fragments/current_order.fragment.graphql.dart';
import 'package:driver_flutter/core/graphql/fragments/ride_option.extentions.dart';
import 'package:driver_flutter/core/graphql/schema.gql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/core/enums/ride_option_icon.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/avatars/driver_avatar_secondary.dart';
import 'package:flutter_common/core/presentation/waypoints_view/waypoints_view.dart';
import 'package:flutter_common/core/presentation/small_chip.dart';
import 'package:flutter_common/core/presentation/chips/square_icon_chip.dart';

class RideHistoryDetailsSheet extends StatelessWidget {
  final Fragment$CurrentOrder entity;

  const RideHistoryDetailsSheet({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: ColorPalette.neutral99,
            border: Border.all(
              color: ColorPalette.primary95,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              const DriverAvatarSecondary(
                imageUrl: null,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      entity.service?.name ?? '',
                      style: context.labelLarge,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      entity.expectedTimestamp.formatDateTime,
                      style: context.bodyMedium?.copyWith(
                        color: context.theme.colorScheme.onSurfaceVariant,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Text(
                    entity.total.formatCurrency(entity.currency),
                    style: context.labelLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    entity.service?.name ?? '',
                    style: context.bodySmall?.copyWith(
                      color: ColorPalette.neutralVariant50,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const Divider(
          height: 24,
        ),
        Text(
          context.translate.tripDetails,
          style: context.labelLarge,
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          alignment: WrapAlignment.start,
          children: [
            SmallChip(
              text: entity.distanceBest.toFormattedDistance(context),
              icon: const Icon(Ionicons.map, color: ColorPalette.neutral70),
            ),
            SmallChip(
              text: context.translate.durationInMinutes(entity.durationBest ~/ 60),
              icon: const Icon(Ionicons.time, color: ColorPalette.neutral70),
            ),
            SmallChip(
              text: entity.paymentMode == Enum$PaymentMode.Cash ? context.translate.cash : context.translate.online,
              icon: entity.paymentMode == Enum$PaymentMode.Cash
                  ? const Icon(Ionicons.cash, color: ColorPalette.neutral70)
                  : const Icon(Ionicons.card, color: ColorPalette.neutral70),
            ),
          ],
        ),
        const Divider(
          height: 24,
        ),
        WayPointsView(
          waypoints: entity.wayPoints,
          startedAt: entity.startTimestamp,
          finishedAt: entity.finishTimestamp,
        ),
        if (entity.options.isNotEmpty) ...[
          const Divider(
            height: 24,
          ),
          Row(
            children: [
              Text(
                context.translate.preferences,
                style: context.bodyMedium,
              ),
              Expanded(
                child: Wrap(
                  alignment: WrapAlignment.end,
                  spacing: 8,
                  children: entity.options
                      .map(
                    (e) => SquareIconChip(icon: e.toEntity.icon.icon),
                  )
                      .followedBy([
                    if (entity.waitMinutes > 0) const SquareIconChip(icon: Ionicons.time),
                  ]).toList(),
                ),
              )
            ],
          ),
        ],
        const SizedBox(height: 24),
      ],
    );
  }
}
