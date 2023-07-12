import 'package:geolocator/geolocator.dart';

class Location {
  double? longitude;
  double? latitude;
  Future<void> getCurrentLocation() async {
    try {
      Position currentPosition = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = currentPosition.latitude;
      longitude = currentPosition.longitude;
    } catch (e) {
      print('error');
    }
  }
}
