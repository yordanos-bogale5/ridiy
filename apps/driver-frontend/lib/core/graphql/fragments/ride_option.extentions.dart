import 'package:driver_flutter/core/graphql/fragments/ride_option.fragment.graphql.dart';
import 'package:flutter_common/core/entities/ride_option.dart';
import 'package:driver_flutter/core/enums/ride_option_icon.prod.dart';

extension RideOptionProdX on Fragment$RideOption {
  RideOptionEntity get toEntity => RideOptionEntity(
        id: id,
        name: name,
        icon: icon.toEntity,
        description: description,
        price: additionalFee,
      );
}
