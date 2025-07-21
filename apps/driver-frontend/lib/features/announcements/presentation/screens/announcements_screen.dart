import 'package:api_response/api_response.dart';
import 'package:auto_route/auto_route.dart';
import 'package:driver_flutter/features/announcements/presentation/components/announcement_empty_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:flutter_common/core/theme/animation_duration.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/buttons/app_back_button.dart';
import 'package:driver_flutter/gen/assets.gen.dart';

import '../blocs/announcements.bloc.dart';
import '../components/announcement_item.dart';

@RoutePage()
class AnnouncementsScreen extends StatefulWidget {
  const AnnouncementsScreen({super.key});

  @override
  State<AnnouncementsScreen> createState() => _AnnouncementsScreenState();
}

class _AnnouncementsScreenState extends State<AnnouncementsScreen> {
  @override
  void initState() {
    super.initState();
    locator<AnnouncementsBloc>().fetchAnnouncements();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider.value(
        value: locator<AnnouncementsBloc>(),
        child: BlocBuilder<AnnouncementsBloc, AnnouncementsState>(
          builder: (context, state) {
            return SafeArea(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.images.backgroundAnnouncements.provider(),
                    fit: BoxFit.contain,
                    alignment: Alignment.topCenter,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    context.responsive(
                      AppBackButton(onPressed: () => context.router.maybePop()),
                      xl: const SizedBox(),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      context.translate.announcements,
                      style: context.headlineSmall,
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: AnimatedSwitcher(
                        duration: AnimationDuration.pageStateTransitionMobile,
                        child: switch (state.announcementsState) {
                          ApiResponseInitial() => const SizedBox.shrink(),
                          ApiResponseLoading() => Assets.lottie.loading.lottie(
                              width: double.infinity,
                              height: double.infinity,
                            ),
                          ApiResponseLoaded(:final data) => data.announcements.isEmpty
                              ? AnnouncementEmptyState()
                              : ListView.separated(
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (context, index) {
                                    final entity = data.announcements[index];
                                    return AnnouncementItem(entity: entity);
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(height: 16);
                                  },
                                  itemCount: data.announcements.length,
                                ),
                          ApiResponseError(:final message) => Center(
                              child: Text(message),
                            ),
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
