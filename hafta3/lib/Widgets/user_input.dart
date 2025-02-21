import 'package:flutter/material.dart';

class UserInput extends StatefulWidget {
  var idC, nsC,fsC;
  UserInput(this.idC,this.nsC,this.fsC);
  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          TextField(
            controller: widget.idC,
            decoration: InputDecoration(
              hintText: "Id",
            ),
          ),
          TextField(
            controller: widget.nsC,
            decoration: InputDecoration(
              hintText: "Name Surname",
            ),
          ),
          TextField(
            controller: widget.fsC,
            decoration: InputDecoration(
              hintText: "Footsize",
            ),
          ),
        ],
      ),
    );
  }
}
