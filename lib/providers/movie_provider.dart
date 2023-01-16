import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class MovieProvider extends ChangeNotifier {
  final String _apiKey = 'bf850aa19e75baf0414f8c32e880cac1';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  MovieProvider() {
    print('MoviesProvider inicializando');

    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1  '});

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);
    final Map<String, dynamic> decodedData = json.decode(response.body);
    if(response.statusCode != 200) return print('Error');

    print(decodedData);
  }
}
