import 'package:equatable/equatable.dart';

class Album extends Equatable {
  final int userId;
  final int id;
  final String title;

  Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  Album.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        userId = json["userId"],
        title = json["title"];

  @override
  List<Object> get props => [id, userId, title];
}
