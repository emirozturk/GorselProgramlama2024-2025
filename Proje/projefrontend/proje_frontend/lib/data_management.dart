import 'package:proje_frontend/models/song.dart';
import 'package:proje_frontend/models/user.dart';
import 'package:proje_frontend/models/user_with_similiarities.dart';
import 'package:proje_frontend/models/user_with_songs.dart';

class DataManagement {
  static var userList = [
    UserWithSongs(
      user: User(username: "emirozturk", password: "123", phone: "123"),
      songs: [
        Song(id: 1, name: "Arıyo", genre: "genre"),
        Song(id: 2, name: "Rapatma 4 (Livera)", genre: "genre"),
      ],
    ),
    UserWithSongs(
      user: User(username: "esatcanbektufan", password: "123", phone: "123"),
      songs: [
        Song(id: 3, name: "name", genre: "genre"),
        Song(id: 4, name: "name", genre: "genre"),
      ],
    ),
  ];
  static var similarityList = [
    UserWithSimiliarities(user: User(username: "emirozturk", password: "123", phone: "123"), similarityScore: 1),
    UserWithSimiliarities(user: User(username: "esatcanbektufan", password: "123", phone: "123"), similarityScore: 0.73),    
  ];
}
