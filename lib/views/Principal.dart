import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:login_signup/views/Principal.dart';
import 'package:login_signup/views/login_signup/comercios.dart';

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample>
{

  bool estado = false;

  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(19.019243, -98.242544),
    zoom: 7.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(19.019243, -98.242544),
      tilt: 59.440717697143555,
      zoom: 13.551926040649414);

  @override
  Widget build(BuildContext context) {

    Set<Circle> mCircle = Set.from([
      Circle(
        circleId: CircleId("Circulo1"),
        center: LatLng(19.019243, -98.242544),
        radius: 3000,
      )

    ]);

    return new Scaffold(
      appBar: AppBar(
        title: Text("Buscar"),
      ),
      bottomNavigationBar: BottomAppBar(),
      body: GoogleMap(
        circles: mCircle,
        mapType: MapType.normal,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: (estado == false ? FloatingActionButton.extended(
        onPressed: _goToTheLake,
        label: Text('Ir a mi ciudad'),
        icon: Icon(Icons.directions_boat),
      ):FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Comercios()));
        },
        label: Text('Obtener comercios'),
        icon: Icon(Icons.shopping_cart),
      )),
    );
  }

  Future<void> _goToTheLake() async {

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
    setState(() {
      estado = true;
    });
  }
}