import 'package:app_core/src/models/models.dart';

abstract class AlbumRepository {
  Future<List<Album>> getAlbums();

  // uncomment to test immediate availability in consuming packages w/o running pub get
  // repositories should show an error
  // Future<void> saveAlbum(Album album);
}