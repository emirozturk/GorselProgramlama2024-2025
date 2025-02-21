import 'package:flutter/material.dart';
import 'package:hafta3/Models/User.dart';
import 'package:hafta3/Widgets/User_list.dart';
import 'package:hafta3/Widgets/button_group.dart';
import 'package:hafta3/Widgets/user_input.dart';
import 'package:hafta3/data.dart';

void main() {
  runApp(Hafta3());
}

class Hafta3 extends StatefulWidget {
  var userList = Db.users;
  @override
  State<Hafta3> createState() => _Hafta3State();
}

class _Hafta3State extends State<Hafta3> {
  var idC = TextEditingController();
  var nsC = TextEditingController();
  var fsC = TextEditingController();

  void ekle() {
    var nameSurname = nsC.text;
    var list = nameSurname.split(" ");
    var name = list[0];
    var surname = list[1];

    var newUser = User(
      id: int.parse(idC.text),
      name: name,
      surname: surname,
      footSize: double.parse(fsC.text),
    );
    setState(() {
      widget.userList.add(newUser);
      idC.clear();
      nsC.clear();
      fsC.clear();
    });
  }

  void ara() {
    print("Ara");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              UserInput(idC, nsC, fsC),
              ButtonGroup(ekle, ara),
              Expanded(
                child: UserList(widget.userList),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
