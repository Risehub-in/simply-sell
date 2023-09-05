import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../domain/entities/coordinates_entity.dart';
import '../cubits/coverage_cubit.dart';

class SetLocationPage extends StatefulWidget {
  const SetLocationPage({super.key, required this.coordinates});

  final CoordinatesEntity coordinates;

  @override
  State<SetLocationPage> createState() => _SetLocationPageState();
}

class _SetLocationPageState extends State<SetLocationPage> {
  late LatLng currentPosition;
  LatLng branchCoordinates = LatLng(19.099748155447553, 72.84569058144776);

  final Set<Marker> _markers = {};

  addMarker() {
    _markers.add(
      Marker(
        infoWindow: InfoWindow(title: 'Move the mapp to adjust your location'),
        markerId: MarkerId('1'),
        position: LatLng(currentPosition.latitude, currentPosition.longitude),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
  }

  _onCameraMove(CameraPosition position) {
    setState(() {
      currentPosition = position.target;
      print(currentPosition);
    });
    addMarker();
  }

  _onCameraIdle() async {
    print('oncamera idle');
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
              zoom: 19,
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
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 14.0, vertical: 14.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on),
                        BlocBuilder<CoverageCubit, CoverageState>(
                          builder: (context, state) {
                            if (state is CoverageStateDone) {
                              print(state.isUserInDeliveryRadius);
                            }
                            return Text('Evershine Global City');
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
