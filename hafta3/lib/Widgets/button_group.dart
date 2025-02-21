import 'package:flutter/material.dart';

class ButtonGroup extends StatefulWidget {
  var ekle,ara;
  ButtonGroup(this.ekle,this.ara);
  @override
  State<ButtonGroup> createState() => _ButtonGroupState();
}

class _ButtonGroupState extends State<ButtonGroup> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: widget.ekle,
            child: Text("Ekle"),
          ),
          ElevatedButton(
            onPressed: widget.ara,
            child: Text("Ara"),
          ),
        ],
      ),
    );
  }
}
