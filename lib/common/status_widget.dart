import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({super.key});

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              'https://cdn-icons-png.flaticon.com/128/436/436302.png'),
        ),
        const SizedBox(height: 2),
        Center(
          child: Text(
            "Gurshan",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
