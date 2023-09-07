import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simply_sell/features/location/domain/entities/coordinates_entity.dart';
import 'package:simply_sell/features/location/presentation/cubits/set_location_cubit.dart';
import '../cubits/coverage_cubit.dart';
import '../widgets/set_location_bottom_sheet.dart';

class SetLocationPage extends StatefulWidget {
  const SetLocationPage({
    super.key,
    required this.coordinates,
  });

  final CoordinatesEntity coordinates;

  @override
  State<SetLocationPage> createState() => _SetLocationPageState();
}

class _SetLocationPageState extends State<SetLocationPage> {
  late LatLng currentPosition;

  final Set<Marker> _markers = {};

  addMarker() {
    _markers.add(
      Marker(
        infoWindow: InfoWindow(
          title: 'Move the mapp to adjust your location',
        ),
        markerId: MarkerId('1'),
        position: LatLng(currentPosition.latitude, currentPosition.longitude),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
  }

  _onCameraMove(CameraPosition position) {
    setState(() {
      currentPosition = position.target;
    });
    addMarker();
  }

  _onCameraIdle() async {
    context.read<CoverageCubit>().isInDeliveryRadius(
        currentPosition.latitude, currentPosition.longitude);
    context.read<SetLocationCubit>().setAddressByCoordinates(
        currentPosition.latitude, currentPosition.longitude);
  }

  @override
  void initState() {
    currentPosition =
        LatLng(widget.coordinates.latitude, widget.coordinates.longitude);
    addMarker();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Text('Choose delivery location'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            myLocationEnabled: false,
            initialCameraPosition: CameraPosition(
              zoom: 18,
              target: LatLng(
                widget.coordinates.latitude,
                widget.coordinates.longitude,
              ),
            ),
            zoomControlsEnabled: false,
            onCameraMove: _onCameraMove,
            onCameraIdle: _onCameraIdle,
            markers: _markers,
          ),
          SetLocationBottomSheet()
        ],
      ),
    );
  }
}
