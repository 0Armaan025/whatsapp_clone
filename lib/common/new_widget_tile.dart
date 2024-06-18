import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NewWidgetTile extends StatefulWidget {
  final Icon icon;
  final String text;
  const NewWidgetTile({super.key, required this.icon, required this.text});

  @override
  State<NewWidgetTile> createState() => _NewWidgetTileState();
}

class _NewWidgetTileState extends State<NewWidgetTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: HexColor("#1bac60"),
            child: widget.icon,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              widget.text,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
