import 'package:better_localization/language_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/core/extensions/extensions.dart';
import 'package:flutter_common/features/select_language_dialog/select_language_dialog.dart';
import 'package:driver_flutter/config/locator/locator.dart';
import 'package:driver_flutter/core/blocs/settings.dart';

import '../../domain/entities/onboarding.dart';

class OnboardingFormBuilder {
  final int onboardingItemIndex;

  const OnboardingFormBuilder({
    required this.onboardingItemIndex,
  });

  Widget buildHeader(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: onBoardingItem(context).image.image(),
    );
  }

  Widget buildFooter(BuildContext context) {
    if (onboardingItemIndex < 2) {
      return buildInformationFooter(context);
    } else {
      return buildLanguageSelectionFooter(context);
    }
  }

  Widget buildInformationFooter(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(
          height: 12,
        ),
        Text(
          onBoardingItem(context).title,
          style: context.headlineSmall?.copyWith(
            color: context.theme.colorScheme.onSurface,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          onBoardingItem(context).description,
          style: context.bodyMedium?.copyWith(
            color: context.theme.colorScheme.onSurfaceVariant,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 40,
        ),
      ],
    );
  }

  Widget buildLanguageSelectionFooter(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          onBoardingItem(context).title,
          style: context.titleLarge,
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 350,
          child: BlocBuilder<SettingsCubit, SettingsState>(
            builder: (context, state) {
              return LanguageList(
                selectedLanguageCode: state.locale,
                onPressed: (Language language) => locator<SettingsCubit>().changeLanguage(language.code),
              );
            },
          ),
        )
      ],
    );
  }

  OnBoardingItem onBoardingItem(BuildContext context) => onboardingItems(context)[onboardingItemIndex];
}
