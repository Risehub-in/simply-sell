import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simply_sell/features/location/domain/entities/coordinates_entity.dart';

import '../../../../core/constants/app_colors.dart';

class SetLocationPage extends StatefulWidget {
  const SetLocationPage({super.key, required this.coordinates});

  final CoordinatesEntity coordinates;

  @override
  State<SetLocationPage> createState() => _SetLocationPageState();
}

class _SetLocationPageState extends State<SetLocationPage> {
  final Completer<GoogleMapController> _controller = Completer();

  final Set<Marker> _markers = {};

  addMarker() {
    _markers.add(
      Marker(
        markerId: MarkerId('1'),
        position:
            LatLng(widget.coordinates.latitude, widget.coordinates.longitude),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
  }

  @override
  void initState() {
    addMarker();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_circle_left_sharp,
            color: AppColors.primary,
            size: 35,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              zoom: 19,
              target: LatLng(
                widget.coordinates.latitude,
                widget.coordinates.longitude,
              ),
            ),
            zoomControlsEnabled: false,
            zoomGesturesEnabled: true,
            markers: _markers,
          ),
        ],
      ),
    );
  }
}
