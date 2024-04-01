import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MakeCommunityWidget extends StatefulWidget {
  const MakeCommunityWidget({super.key});

  @override
  State<MakeCommunityWidget> createState() => _MakeCommunityWidgetState();
}

class _MakeCommunityWidgetState extends State<MakeCommunityWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/128/9278/9278608.png'),
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        Positioned(
            top: 30,
            left: 30,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: HexColor("#26ab67"),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 12,
              ),
            )),
      ],
    );
  }
}
