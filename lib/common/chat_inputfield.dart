import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({Key? key}) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final TextEditingController _messageController = TextEditingController();
  bool _hasText = false;

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(4),
          ),
          alignment: Alignment.center,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Text(
                    "0:17",
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  child: Image(
                    image: NetworkImage(
                        "https://s3.ezgif.com/tmp/ezgif-3-3a5f822c0d.gif"),
                  ),
                ),
              ),
            ],
          ),
          height: size.height * 0.07,
          margin: EdgeInsets.only(
              bottom: size.height * 0.02,
              left: size.width * 0.02,
              right: size.width * 0.02),
        ),
        Container(
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  onChanged: (e) {
                    setState(() {
                      _hasText = e.isNotEmpty;
                    });
                  },

                  controller: _messageController,
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
                child: _hasText
                    ? Icon(
                        Icons.send_sharp,
                        color: Colors.white,
                      )
                    : Icon(
                        Icons.mic,
                        color: Colors.white,
                      ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
