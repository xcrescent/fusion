import 'package:http/http.dart' as http;

class HttpController {
  Future getCountryFunc(String countryName) async {
    if (countryName == '') {
      countryName = 'ind';
    }
    final response = await http.get(Uri.parse(
        'https://us-central1-elitevidproj.cloudfunctions.net/getCity/$countryName'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future calculateDistance(from, to) async {
    final response = await http.get(Uri.parse(
        'https://dazzling-shape-production.up.railway.app/$from/$to'));
    if (response.statusCode == 200) {
   
      return response.body;
    } else {
     
      throw Exception('Failed to load album');
    }
  }
}
