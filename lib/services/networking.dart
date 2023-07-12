import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);
  Future getWeather() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var jsonDecoded = jsonDecode(response.body);
      return jsonDecoded;
    } else {
      print(response.statusCode);
      return;
    }
  }
}
