import 'package:flutter/material.dart';
import 'package:driver_flutter/core/extensions/extensions.dart';
import 'package:driver_flutter/gen/assets.gen.dart';
import 'package:flutter_common/core/presentation/empty_list_state.dart';

class AnnouncementEmptyState extends StatelessWidget {
  const AnnouncementEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyListState(
      imagePath: Assets.images.announcementEmpty.path,
      title: context.translate.noAnnouncements,
    );
  }
}
