import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:http/http.dart' as http;
import 'CustomForm.dart';

class GetCurrentLocation extends StatefulWidget {
  const GetCurrentLocation({Key? key}) : super(key: key);

  @override
  State<GetCurrentLocation> createState() => _GetCurrentLocationState();
}

class _GetCurrentLocationState extends State<GetCurrentLocation> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController doorNo = TextEditingController();
  TextEditingController street = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController country = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spire View Tech'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              CustomTextForm.customTextField(
                  'Enter Your Door No', 'Door No', Icon(Icons.person), doorNo),
              SizedBox(
                height: 10.0,
              ),
              CustomTextForm.customTextField('Enter Your Street', 'Street Name',
                  Icon(Icons.person), street),
              SizedBox(
                height: 10.0,
              ),
              CustomTextForm.customTextField(
                  'Enter Your Area', 'Area Name', Icon(Icons.person), area),
              SizedBox(
                height: 10.0,
              ),
              CustomTextForm.customTextField(
                  'Enter Your City', 'City Name', Icon(Icons.person), city),
              SizedBox(
                height: 10.0,
              ),
              CustomTextForm.customTextField('Enter Your Country',
                  'Country Name', Icon(Icons.person), country),
              ElevatedButton(
                  onPressed: () async {
                    Position latland = await _determinePosition();
                    getAddressFromLatLnd(latland);
                    submitdata();
                  },
                  child: Text('Get Location')),
            ],
          ),
        ),
      ),
    );
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future getAddressFromLatLnd(Position latlnd) async {
    List<Placemark> placemarks = await placemarkFromCoordinates(
        5.2662493, -3.9776399); //geocoding packing has this by default

    /*List<Placemark> placemarks =
        await placemarkFromCoordinates(latlnd.latitude, latlnd.longitude);*/
    Placemark getCurrentAdd = placemarks[0];

    debugPrint(placemarks.toString());
    setState(() {
      doorNo.text = '${getCurrentAdd.name}';
      street.text = '${getCurrentAdd.street}';
      area.text = '${getCurrentAdd.subLocality}';
      city.text = '${getCurrentAdd.locality}';
      country.text = '${getCurrentAdd.country}';
    });
  }

  submitdata() async {
    const APIURL = 'https://jsonplaceholder.typicode.com/posts';

    Map<String, dynamic> PostData = {
      "door_no": doorNo.text.trim(),
      "street": street.text.trim(),
      "area": area.text.trim(),
      "city": city.text.trim(),
      "country": country.text.trim(),
    };

    try {
      dynamic svtresponse = await http.post(Uri.parse(APIURL), body: PostData);
      debugPrint(svtresponse.body);
      doorNo.clear();
      street.clear();
    } catch (e) {
      debugPrint('${e}');
    }
  }
}
