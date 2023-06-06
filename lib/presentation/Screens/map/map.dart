import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:intl/intl.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:google_maps_webservice/places.dart';
import 'package:google_api_headers/google_api_headers.dart';
import 'package:medical_services/business_logic/cubit.dart';
import 'package:medical_services/business_logic/states.dart';
import 'package:medical_services/presentation/Screens/setting/language/lang.dart';

class Maps extends StatefulWidget {
  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(31.070711, 31.388696),
    zoom: 12.4746,
  );
  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  late GoogleMapController googleMapController;

  var messageContror = TextEditingController();

  List<Component> _predictionList = [];

  var scffoldKey = GlobalKey<ScaffoldState>();


  LatLng currentLoction = Maps._kGooglePlex.target;



  tolocatio() async{
    Text(
        'lat: ${currentLoction.latitude} , long: ${currentLoction.longitude}');
  }

  Set<Marker> _markers = Set();

  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();
  late FirebaseMessaging note ;

  String location = "Search Location";
  String googleApikey = "AIzaSyCiugS2YJUSyBS8zwf2-nnG36hjVNOg9Gk";
  GoogleMapController? mapController; //contrller for Google map



  @override
  void initState() {
    tolocatio();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit(),
      child: BlocConsumer<AppCubit, MedialState>(
        listener: (context, state) {},
        builder: (context, state) {

          return Scaffold(
            key: scffoldKey,
            appBar: AppBar(
              elevation: 0,
              title: Center(
                child: Container(
                  height: 45,
                  color: Colors.white,
                  child: TextFormField(
                    onTap: _handlePressButton,
                    controller: messageContror,
                    decoration: InputDecoration(

                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.location_searching),
                      hintText: '${getLang(context, "Search your flight location")}',
                    ),
                  ),
                ),
              ),
              actions: [
                IconButton(
                    onPressed: () => _setMarker(currentLoction),
                    icon: Icon(Icons.location_on),color: Colors.black87,)
              ],
//
            ),
            body: Column(
              children: [

                Expanded(

                  child: GoogleMap(
                    // polylines: polyline.toSet(),
                    mapType: MapType.normal,
                    initialCameraPosition: Maps._kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);

                    },
                    onCameraMove: (CameraPosition _kGooglePlex) {
                      setState(() {
                        currentLoction = _kGooglePlex.target;
                      });
                    },
                    markers: _markers,
                  ),
                ),

              ],
            ),
            floatingActionButton: FloatingActionButton(onPressed: (){
              getUserCurrentLocation().then((value) async {
                print(value.latitude.toString() +" "+value.longitude.toString());

                // marker added for current users location
                _markers.add(
                    Marker(
                      markerId: MarkerId("7"),
                      position: LatLng(value.latitude, value.longitude),
                      infoWindow: InfoWindow(
                        title: 'موقعي الحالي',
                      ),
                    )
                );

                // specified current users location
                CameraPosition cameraPosition = new CameraPosition(
                  target: LatLng(value.latitude, value.longitude),
                  zoom: 14,
                );

                final GoogleMapController controller = await _controller.future;
                controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
                setState(() {
                });
              });
            },
              child: Icon(
                  Icons.location_searching
              ),
            ),
            bottomNavigationBar: SingleChildScrollView(
              child: Container(

                alignment: Alignment.center,
                child:
                Text(
                    'lat: ${currentLoction.latitude} , long: ${currentLoction.longitude}'),
              ),
            ),
          );
        },
      ),
    );
  }



  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission().then((value){
    }).onError((error, stackTrace) async {
      await Geolocator.requestPermission();
      print("ERROR"+error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  void _setMarker(LatLng _location) {
    Marker newMarker = Marker(
      markerId: MarkerId(_location.toString()),
      icon: BitmapDescriptor.defaultMarker,
      // icon: _locationIcon,
      position: _location,
      infoWindow: InfoWindow(
          title: "Title",
          snippet: "${currentLoction.latitude}, ${currentLoction.longitude}"),
    );
    _markers.add(newMarker);
    setState(() {});
  }

  Future<void> _showSearchDialog() async {
    Prediction? p = await PlacesAutocomplete.show(
      context: context,
      apiKey: 'AIzaSyCfiyN1pG7lK2lC_iKk5942eeDHuNBOWgI',
      mode: Mode.overlay,
      language: "ar",
      region: "ar",
      offset: 0,
      hint: "Type here...",
      radius: 1000,
      types: [],
      strictbounds: true,
      components: [Component(Component.country, "en")],
    );

    _getLocationFromPlaceId(p!.placeId!);
    setState(() {});
  }

  Future<void> _getLocationFromPlaceId(String placeId) async {
    GoogleMapsPlaces _places = GoogleMapsPlaces(
      apiKey: 'AIzaSyCfiyN1pG7lK2lC_iKk5942eeDHuNBOWgI',
      apiHeaders: await GoogleApiHeaders().getHeaders(),
    );

    PlacesDetailsResponse detail = await _places.getDetailsByPlaceId(placeId);

    _animateCamera(LatLng(detail.result.geometry!.location.lat,
        detail.result.geometry!.location.lng));
    setState(() {});
  }

  Future<void> _animateCamera(LatLng _location) async {
    final GoogleMapController controller = await _controller.future;
    CameraPosition _cameraPosition = CameraPosition(
      target: _location,
      zoom: 13.00,
    );
    print(
        "animating camera to (lat: ${_location.latitude}, long: ${_location.longitude}");
    controller.animateCamera(CameraUpdate.newCameraPosition(_cameraPosition));
  }

  Future<void> _handlePressButton() async {
    Prediction? p = await PlacesAutocomplete.show(
        context: context,
        apiKey: 'AIzaSyCfiyN1pG7lK2lC_iKk5942eeDHuNBOWgI',
        onError: (e){
          print(e.toString());
        },
        mode: Mode.fullscreen,
        strictbounds: false,
        types: [""],
        decoration: InputDecoration(
            hintText: 'Search',
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.white))),
        components: [
          Component(Component.country, "country"),
          Component(Component.country, "eg")
        ]);

    displayPrediction(p!, scffoldKey.currentState);
    setState(() {});
  }
  Future<void> displayPrediction(p, ScaffoldState? currentState) async {
    GoogleMapsPlaces places = GoogleMapsPlaces(
        apiKey: 'AIzaSyCfiyN1pG7lK2lC_iKk5942eeDHuNBOWgI',
        apiHeaders: await const GoogleApiHeaders().getHeaders());

    PlacesDetailsResponse detail = await places.getDetailsByPlaceId(p.placeId!);

    final lat = detail.result.geometry!.location.lat;
    final lng = detail.result.geometry!.location.lng;

    _markers.clear();
    _markers.add(Marker(
        markerId: const MarkerId("0"),
        position: LatLng(lat, lng),
        infoWindow: InfoWindow(title: detail.result.name)));

    setState(() {});
    googleMapController
        .animateCamera(CameraUpdate.newLatLngZoom(LatLng(lat, lng), 14.0));
  }



}



