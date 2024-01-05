import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_ninja/utils/utils.dart';
import 'package:food_ninja/widgets/screen_bachground.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SetLocationMapScreen extends StatefulWidget {
  static const routeName = "SetLocationMapScreen";
  const SetLocationMapScreen({super.key});

  @override
  State<SetLocationMapScreen> createState() => _SetLocationMapScreenState();
}

class _SetLocationMapScreenState extends State<SetLocationMapScreen>
    with TickerProviderStateMixin {
  final Completer<GoogleMapController> _controller = Completer();
  final Map<MarkerId, Marker> _markers = <MarkerId, Marker>{};
  int _markerIdCounter = 0;
  late LatLng _currentLocation;
  BitmapDescriptor? _homeIcon;
  bool isInit = true;
  String? _mapStyle;
  @override
  void initState() {
    _currentLocation = const LatLng(0, 0);
    rootBundle.loadString('assets/map_style.json').then((string) {
      _mapStyle = string;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      safeArea: false,
      ignoreAppBar: true,
      horizontalPadding: 0,
      widget: Stack(
        children: [
          GoogleMap(
            minMaxZoomPreference: const MinMaxZoomPreference(10, 18),
            markers: Set<Marker>.of(_markers.values),
            zoomControlsEnabled: true,
            myLocationButtonEnabled: false,
            myLocationEnabled: false,
            initialCameraPosition: CameraPosition(
              target: _currentLocation,
              zoom: 18.0,
            ),
            onMapCreated: _onMapCreated,
          ),
        ],
      ),
    );
  }

  String _markerIdVal({bool increment = false}) {
    String val = 'marker_id_$_markerIdCounter';
    if (increment) _markerIdCounter++;
    return val;
  }

  void _onMapCreated(GoogleMapController controller) async {
    if (Utils.isDark(context)) {
      controller.setMapStyle(_mapStyle);
    }
    _controller.complete(controller);
    MarkerId markerId = MarkerId(_markerIdVal());
    LatLng position = _currentLocation;

    Marker marker = Marker(
      icon: _homeIcon ?? BitmapDescriptor.defaultMarker,
      markerId: markerId,
      position: position,
      draggable: false,
    );
    setState(() {
      _markers[markerId] = marker;
    });
    _currentLocation = position;

    Future.delayed(const Duration(milliseconds: 600), () async {
      GoogleMapController controller = await _controller.future;
      controller.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(target: position, zoom: 18),
        ),
      );
    });
  }
}
