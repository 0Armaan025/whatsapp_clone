import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/common/chat_inputfield.dart';
import 'package:whatsapp_clone/common/message_image_tile.dart';
import 'package:whatsapp_clone/common/text_message_tile.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#010101"),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.arrow_back),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "+91 7837433000",
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Icon(
                Icons.videocam_outlined,
                size: 26,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Icon(
                Icons.call_outlined,
                size: 25,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2),
              child: Icon(
                Icons.more_vert_outlined,
                size: 25,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              controller: _scrollController,
              itemCount: 5, // Replace with your actual item count
              itemBuilder: (context, index) {
                return MessageImageTile();
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            child: ChatInputField(),
          ),
        ],
      ),
    );
  }
}
