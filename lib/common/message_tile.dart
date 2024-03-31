import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MessageTile extends StatefulWidget {
  const MessageTile({super.key});

  @override
  State<MessageTile> createState() => _MessageTileState();
}

class _MessageTileState extends State<MessageTile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
      width: double.infinity,
      height: size.height * 0.08,
      decoration: BoxDecoration(),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://cdn-icons-png.flaticon.com/128/3135/3135715.png'),
              ),
              SizedBox(width: 10),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Lichess TMTs",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text("~ Arnav: Hi, I'm noob!"),
                ],
              ),
              SizedBox(width: 60),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "3:20 PM",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 160, 144, 0)),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: HexColor('#1dab62'),
                    child: Text(
                      "5",
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
