import 'package:flutter/material.dart';
import 'package:proje_frontend/data_management.dart';
import 'package:proje_frontend/models/song.dart';
import 'package:proje_frontend/models/user.dart';

class UserMainpage extends StatefulWidget {
  User user = User(username: "emirozturk", password: "123");
  UserMainpage();
  @override
  State<UserMainpage> createState() => _UserMainpageState();
}

class _UserMainpageState extends State<UserMainpage> {
  List<Song>? songList;
  var newSongController = new TextEditingController();
  void ekle() {}

  @override
  void initState() {
    super.initState();
    songList =
        DataManagement.userList
            .where((x) => x.user.username == widget.user.username)
            .first
            .songs;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: songList?.length,
            itemBuilder:
                (context, i) => ListTile(
                  title: Text(songList![i].name),
                  subtitle: Text(songList![i].genre),
                ),
          ),
        ),
        SizedBox(
          height: 150,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: newSongController,
                  decoration: InputDecoration(hintText: "Yeni parça"),
                ),
              ),
              ElevatedButton(onPressed: ekle, child: Icon(Icons.add)),
            ],
          ),
        ),
      ],
    );
  }
}
