import 'dart:convert';

import 'package:app_core/app_core.dart';
import 'package:http/http.dart' as http;

class HttpAlbumRepository implements AlbumRepository {
  Future<List<Album>> getAlbums() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      final List<Album> albums =
          List.from(jsonDecode(response.body).map((e) => Album.fromJson(e)));
      return albums;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}
