import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AddStatusWidget extends StatefulWidget {
  const AddStatusWidget({super.key});

  @override
  State<AddStatusWidget> createState() => _AddStatusWidgetState();
}

class _AddStatusWidgetState extends State<AddStatusWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/128/436/436302.png'),
            ),
            Positioned(
                top: 37,
                right: 2,
                child: InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 12,
                    backgroundColor: HexColor("#05a784"),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )),
          ],
        ),
        const SizedBox(height: 2),
        Center(
          child: Text(
            "My status",
            style: TextStyle(color: Colors.grey[500]),
          ),
        ),
      ],
    );
  }
}
