import 'package:geolocator/geolocator.dart';
class Location{
  double latitude;
  double longitude;

Position position=Position();
Future<void> getCurrentLocation() async {
  try{
  if(await Geolocator.isLocationServiceEnabled()){
    position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    latitude = position.latitude;
    longitude = position.longitude;
  }else{
    await Geolocator.requestPermission();
  }}
  catch(e){
    print(e);
  }
}
}

