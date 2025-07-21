import 'package:flutter_common/core/enums/intent_result.dart';
import 'package:driver_flutter/core/graphql/fragments/intent_result.fragment.graphql.dart';
import 'package:driver_flutter/core/graphql/schema.gql.dart';

extension IntentResultX on Fragment$IntentResult {
  IntentResult get toEntity {
    switch (status) {
      case Enum$TopUpWalletStatus.OK:
        return const IntentResult.success();

      case Enum$TopUpWalletStatus.Failed:
        return IntentResult.failure(
          errorMessage: error ?? 'Something went wrong',
        );

      case Enum$TopUpWalletStatus.Redirect:
        return IntentResult.redirect(
          url: url!,
        );

      case Enum$TopUpWalletStatus.$unknown:
        return const IntentResult.failure(
          errorMessage: 'IntentResult.toEntity: unknown status',
        );
    }
  }
}
