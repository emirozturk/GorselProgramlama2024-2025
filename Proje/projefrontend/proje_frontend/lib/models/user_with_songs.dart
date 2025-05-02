import 'package:proje_frontend/models/song.dart';
import 'package:proje_frontend/models/user.dart';

class UserWithSongs {
  User user;
  List<Song> songs;
  UserWithSongs({required this.user,required this.songs});
}