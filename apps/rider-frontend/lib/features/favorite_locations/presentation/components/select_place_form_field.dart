import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_common/config/constants.dart';
import 'package:generic_map/generic_map.dart';
import 'package:rider_flutter/config/locator/locator.dart';
import 'package:rider_flutter/config/router/app_router.dart';
import 'package:rider_flutter/core/extensions/extensions.dart';
import 'package:flutter_common/core/presentation/markers/app_marker_address.dart';
import 'package:flutter_common/core/presentation/markers/app_marker_address_null.dart';
import 'package:rider_flutter/core/presentation/app_generic_map.dart';
import 'package:rider_flutter/features/favorite_locations/presentation/blocs/favorite_location_desktop_map.bloc.dart';

class SelectPlaceFormField extends StatefulWidget {
  final Function(Place) onSaved;
  final Function(Place) onChanged;
  final Place? initialValue;
  final String? markerTitle;

  const SelectPlaceFormField({
    super.key,
    required this.onSaved,
    required this.initialValue,
    required this.onChanged,
    required this.markerTitle,
  });

  @override
  State<SelectPlaceFormField> createState() => _SelectPlaceFormFieldState();
}

class _SelectPlaceFormFieldState extends State<SelectPlaceFormField> {
  MapViewController? mapViewController;
  @override
  Widget build(BuildContext context) {
    return FormField<Place>(
      validator: (value) => value == null ? context.translate.fieldIsRequired : null,
      onSaved: (newValue) {
        if (newValue != null) {
          widget.onSaved(newValue);
        }
      },
      initialValue: widget.initialValue,
      builder: (fieldState) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () async {
                final result = await context.router.push(const LocateFavoriteLocationRoute()) as Place?;
                if (result != null) {
                  fieldState.didChange(result);
                  widget.onChanged(result);
                  locator<FavoriteLocationsDesktopMapCubit>().viewOne(
                    name: widget.markerTitle ?? "",
                    location: result,
                  );
                  mapViewController?.moveCamera(
                    result.latLng,
                    16,
                  );
                }
              },
              minimumSize: Size(0, 0),
              child: IgnorePointer(
                child: Container(
                  height: 250,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AppGenericMap(
                    mode: MapViewMode.static,
                    initialLocation: fieldState.value ?? Constants.defaultLocation,
                    onControllerReady: (controller) => mapViewController = controller,
                    markers: [
                      if (fieldState.value != null)
                        AppMarkerAddresss(
                          address: fieldState.value!.address,
                          title: widget.markerTitle ?? "",
                        ).genericMarker(fieldState.value!.latLng),
                      if (widget.markerTitle == null)
                        const AppMarkerAddressNull().genericMarker(
                          Constants.defaultLocation.latLng,
                        ),
                    ],
                  ),
                ),
              ),
            ),
            if (fieldState.hasError) ...[
              const SizedBox(height: 8),
              Text(
                fieldState.errorText ?? '',
                style: context.bodySmall?.copyWith(color: context.theme.colorScheme.error),
              ),
            ]
          ],
        );
      },
    );
  }
}
