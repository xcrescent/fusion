import 'package:http/http.dart' as http;
import 'dart:convert';

Countries countriesFromJson(String str) => Countries.fromJson(json.decode(str));

String countriesToJson(Countries data) => json.encode(data.toJson());

class Countries {
  Countries({
    required this.countries,
  });

  List<String> countries;

  factory Countries.fromJson(Map<String, dynamic> json) => Countries(
        countries: List<String>.from(json["countries"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "countries": List<dynamic>.from(countries.map((x) => x)),
      };
}

class HttpController {
  Future<Countries> getCountryFunc(String countryName) async {
    if (countryName == '') {
      countryName = 'i';
    }
    final response = await http.get(Uri.parse(
        'https://dazzling-shape-production.up.railway.app/countries/$countryName'));
    if (response.statusCode == 200) {
      return countriesFromJson(response.body);
    } else {
      throw Exception('Failed to load album');
    }
  }

  Future<double> calculateDistance(from, to) async {
    final response = await http.get(Uri.parse(
        'https://dazzling-shape-production.up.railway.app/distance/$from/$to'));
    if (response.statusCode == 200) {
   
      return double.parse(response.body);
    } else {
     
      throw Exception('Failed to load album');
    }
  }
  Future<String> verifyCountryCode(code) async {
    final response = await http.get(Uri.parse(
        'https://dazzling-shape-production.up.railway.app/verifyCountry/$code'));
    if (response.statusCode == 200) {
      return response.body;
    } else {
      throw Exception('Failed to load album');
    }
  }
  Future<double> predictedCost(q,v,d) async{
    final response = await http.get(Uri.parse(
        'https://web-production-55bb.up.railway.app/?q=$q&v=$v&d=$d'));
    if (response.statusCode == 200) {
      return double.parse(response.body);
    } else {
      throw Exception('Failed to load album');
    }
  }
}
