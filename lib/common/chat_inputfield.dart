import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({Key? key}) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              style: TextStyle(color: Colors.black), // Set text color
              decoration: InputDecoration(
                hintText: 'Message',
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: HexColor("#ffffff"),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.attach_file_rounded,
                        color: Colors.grey[400],
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.grey[400],
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                ),
                prefixIcon: Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.grey[400],
                ),
              ),
            ),
          ),
          const SizedBox(width: 30 / 3),
          CircleAvatar(
            radius: 28,
            backgroundColor: HexColor("#1faa68"),
            child: Icon(
              Icons.mic,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
