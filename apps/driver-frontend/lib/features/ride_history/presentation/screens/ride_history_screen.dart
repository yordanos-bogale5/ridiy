import 'package:api_response/api_response.dart';
import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/features/ride_history/presentation/components/ride_history_empty_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/router/app_router.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_back_button.dart';
import 'package:driver_flutter/gen/assets.gen.dart';

import '../blocs/ride_history.bloc.dart';
import '../components/ride_history_item.dart';

@RoutePage()
class RideHistoryScreen extends StatefulWidget {
  const RideHistoryScreen({super.key});

  @override
  State<RideHistoryScreen> createState() => _RideHistoryScreenState();
}

class _RideHistoryScreenState extends State<RideHistoryScreen> {
  @override
  void initState() {
    locator<RideHistoryBloc>().fetchRideHistory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: locator<RideHistoryBloc>(),
      child: SafeArea(
        child: Container(
          color: context.theme.scaffoldBackgroundColor,
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              context.responsive(
                AppBackButton(onPressed: () {
                  context.router.maybePop();
                }),
                xl: const SizedBox.shrink(),
              ),
              SizedBox(height: context.responsive(16, xl: 84)),
              Text(
                context.translate.rideHistory,
                style: context.headlineSmall,
              ),
              const SizedBox(height: 24),
              Expanded(
                child: BlocBuilder<RideHistoryBloc, RideHistoryState>(
                  builder: (context, state) {
                    return AnimatedSwitcher(
                      duration: AnimationDuration.pageStateTransitionDesktop,
                      child: switch (state.rideHistoryState) {
                        ApiResponseInitial() => const SizedBox.shrink(),
                        ApiResponseLoading() => Assets.lottie.loading.lottie(
                            width: double.infinity,
                            height: double.infinity,
                          ),
                        ApiResponseLoaded(:final data) => data.orders.edges.isEmpty
                            ? RideHistoryEmptyState()
                            : ListView.separated(
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  return RideHistoryItem(
                                    entity: data.orders.edges[index].node,
                                    onPressed: () => context.router.push(
                                      RideHistoryDetailsRoute(entity: data.orders.edges[index].node),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) => const SizedBox(height: 16),
                                itemCount: data.orders.edges.length,
                              ),
                        ApiResponseError(:final message) => Center(child: Text(message)),
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
