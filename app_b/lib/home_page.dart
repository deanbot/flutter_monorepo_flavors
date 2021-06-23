import 'package:app_core/app_core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final AlbumRepository albumRepository;

  const HomePage({Key? key, required this.albumRepository}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Album>> futureAlbums;

  @override
  void initState() {
    super.initState();
    futureAlbums = widget.albumRepository.getAlbums();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App B"),
      ),
      body: FutureBuilder<List<Album>>(
        future: futureAlbums,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var items = snapshot.data;
            return ListView.builder(
              itemCount: items!.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index].title),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text("${snapshot.error}"));
          }

          // By default, show a loading spinner.
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
