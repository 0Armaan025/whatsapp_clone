import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TextMessageTile extends StatelessWidget {
  const TextMessageTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      constraints: BoxConstraints(
          maxWidth: size.width * 0.7), // Adjust the max width as needed
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(right: 16, top: 8, left: size.width * 0.1),
      decoration: BoxDecoration(
        color: HexColor("#edfce4"),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0).copyWith(left: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "This works, nice",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              textAlign: TextAlign.end,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "1:34 PM",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.done_all_outlined,
                  size: 20,
                  color: Colors.grey[500],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
