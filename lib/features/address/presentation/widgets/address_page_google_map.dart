import 'package:flutter/cupertino.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressPageGoogleMap extends StatelessWidget {
  const AddressPageGoogleMap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: true,
      child: SizedBox(
        height: 250,
        child: GoogleMap(
            compassEnabled: false,
            mapToolbarEnabled: false,
            zoomControlsEnabled: false,
            zoomGesturesEnabled: false,
            initialCameraPosition: CameraPosition(
              zoom: 14,
              target: LatLng(19.47211720732276, 72.80578326426293),
            ),
            markers: {
              Marker(
                markerId: MarkerId('1'),
                position: LatLng(19.47211720732276, 72.80578326426293),
              )
            }),
      ),
    );
  }
}
