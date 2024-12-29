// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.low,
      distanceFilter: 100,
    );

    try {
      var position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);

      this.latitude = position.latitude;
      this.longitude = position.longitude;
    }
    catch (e) {
      print(e);
    }
  }
} 
