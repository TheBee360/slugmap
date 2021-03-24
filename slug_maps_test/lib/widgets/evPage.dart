import 'dart:async';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:testing_app/widgets/CollegesFilter.dart';
import 'package:testing_app/widgets/evFilterMap.dart';
import 'package:testing_app/widgets/evFilterPage.dart';
//import 'package:testing_app/widgets/slugMapFilter.dart';
import 'package:testing_app/widgets/slugMapMain.dart';
import 'package:testing_app/widgets/slugSearch.dart';


class EVMap extends StatefulWidget {
  @override
  _EVMapState createState() => _EVMapState();
}

class _EVMapState extends State<EVMap> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = Set<Marker>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    CameraPosition initialCameraPosition = CameraPosition(
        target: LatLng(36.989043, -122.058611),
        zoom: 14.35,
    );

    return Scaffold(
      body: Container(
        child: GoogleMap(
            markers: _markers,
            mapType: MapType.normal,
            initialCameraPosition: initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);

              showPinsOnMap();
            },
        )
      ),
    );
  }

  void showPinsOnMap() {
    // _markers.addAll(DiningHallList)

    _markers.add(Marker(
      markerId: MarkerId('OceanST'),
      position: LatLng(36.9788943336269, -122.0223634179128),
      infoWindow: InfoWindow(
        title: 'EV ChargePoint Charging Station',
        snippet: '701 Ocean St, Santa Cruz, CA 95060',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
    )
    );


    _markers.add(Marker(
      markerId: MarkerId('McLaughlinDr'),
      position: LatLng(36.999324250111506, -122.0632982467481),
      infoWindow: InfoWindow(
        title: 'EV ChargePoint Charging Station',
        snippet: ' McLaughlin Dr, Santa Cruz, CA 95064',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
    ),
    );

    _markers.add(Marker(
      markerId: MarkerId('Soquel Ave'),
      position: LatLng(36.98174810947192, -122.01507687519172),
      infoWindow: InfoWindow(
        title: 'EV ChargePoint Charging Station',
        snippet: '911 Soquel Ave, Santa Cruz, CA 95062',
      ),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
    ),
    );
  }

}