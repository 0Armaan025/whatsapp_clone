import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/common/new_widget_tile.dart';

class NewFeaturesWidget extends StatefulWidget {
  const NewFeaturesWidget({super.key});

  @override
  State<NewFeaturesWidget> createState() => _NewFeaturesWidgetState();
}

class _NewFeaturesWidgetState extends State<NewFeaturesWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          NewWidgetTile(
              icon: Icon(
                Icons.group_add,
                color: Colors.white,
              ),
              text: 'New group'),
          NewWidgetTile(
              icon: Icon(
                Icons.person_add_alt_1,
                color: Colors.white,
              ),
              text: 'New contact'),
          NewWidgetTile(
              icon: Icon(
                CupertinoIcons.group_solid,
                color: Colors.white,
              ),
              text: 'New community'),
        ],
      ),
    );
  }
}
