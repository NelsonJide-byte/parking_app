import 'package:parking_app/models/place.dart';
import 'package:http/http.dart' as http;

class PlacesService {
  final key = 'AIzaSyAl8Ri-rdrmPSYSYb1_lgyjfs8_4-5-Cc8';

  Future<List<Place>> getPlaces(double lat, double lng) async {
    var response = await http.get(
        'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$lat,$lng&type=parking&rankby=distance&key=$key');
  }
}
