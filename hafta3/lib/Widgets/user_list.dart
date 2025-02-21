import 'package:flutter/material.dart';

class UserList extends StatefulWidget {
  var userList;
  UserList(this.userList);
  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListView.builder(
        itemCount: widget.userList.length,
        itemBuilder: (context, i) => ListTile(
          trailing: Text("${widget.userList[i].footSize}"),
          leading: Text(widget.userList[i].id.toString()),
          title: Text("${widget.userList[i].name} ${widget.userList[i].surname}"),
          tileColor: Colors.white,
          onTap: () {},
        ),
      ),
    );
  }
}
