import 'package:flutter/cupertino.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter_common/core/color_palette/color_palette.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';

class PlaceResultItem extends StatelessWidget {
  final String? title;
  final String subtitle;
  final String? trailing;
  final bool isRecent;
  final VoidCallback? onPressed;

  const PlaceResultItem({
    super.key,
    this.title,
    required this.subtitle,
    this.isRecent = false,
    required this.onPressed,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: const EdgeInsets.all(0),
      minimumSize: Size(0, 0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: ColorPalette.neutral90,
                width: 1,
              ),
            ),
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (title != null)
                  Text(
                    title!,
                    style: context.labelLarge,
                  ),
                Text(
                  subtitle,
                  style: context.bodyMedium?.copyWith(
                    color: context.theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
          if (trailing != null) ...[
            const SizedBox(width: 12),
            Text(
              trailing!,
              style: context.bodyMedium?.copyWith(
                color: context.theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ],
      ),
    );
  }

  IconData get icon => isRecent ? Ionicons.time : Ionicons.location;

  Color get iconColor => isRecent ? ColorPalette.neutral70 : ColorPalette.tertiary60;
}
