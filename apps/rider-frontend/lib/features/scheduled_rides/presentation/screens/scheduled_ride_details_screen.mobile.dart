import 'package:flutter/material.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:rider_flutter/core/graphql/fragments/active_order.fragment.graphql.dart';
import 'package:rider_flutter/features/scheduled_rides/presentation/components/details_sheet.dart';

class ScheduledRideDetailsScreenMobile extends StatelessWidget {
  final Fragment$CurrentOrder entity;

  const ScheduledRideDetailsScreenMobile({
    super.key,
    required this.entity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.scaffoldBackgroundColor,
      padding: const EdgeInsets.all(16),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Expanded(child: ScheduledRidesDetailsSheet(entity: entity)),
          ],
        ),
      ),
    );
  }
}
