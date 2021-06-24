import 'package:app_core/app_core.dart';

class MockAlbumRepository implements AlbumRepository {
  final List<Album> _albums = [
    Album(userId: 1, id: 1, title: 'Chop Chop Master Onion\'s Rap'),
    Album(userId: 1, id: 2, title: 'Mooselini\'s Car Rap'),
    Album(userId: 1, id: 3, title: 'Prince Fleaswallow\'s Rap'),
    Album(userId: 1, id: 4, title: 'Cheap Cheap\'s Cooking Rap'),
    Album(userId: 1, id: 5, title: 'Live Rap with MC King Kong Mushi'),
  ];

  Future<List<Album>> getAlbums() async {
    await Future.delayed(Duration(seconds: 1));
    return _albums;
  }
}
