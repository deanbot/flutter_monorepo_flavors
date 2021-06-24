import 'package:flutter/material.dart';
import 'package:app_core/app_core.dart';

class AlbumsList extends StatelessWidget {
  final List<Album> albums;
  const AlbumsList({Key? key, required this.albums}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (albums.length > 0) {
      return ListView.builder(
          itemCount: albums.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(albums[index].title),
            );
          });
    }
    return Container();
  }
}
