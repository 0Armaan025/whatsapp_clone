import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({Key? key}) : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField>
    with TickerProviderStateMixin {
  bool _isHoldingMic = false;
  final TextEditingController _messageController = TextEditingController();
  bool _hasText = false;
  int _secondsElapsed = 0;
  late AnimationController controller;
  bool _showFeatures = false;

  @override
  void initState() {
    super.initState();
    controller = BottomSheet.createAnimationController(this);

    controller.duration = const Duration(seconds: 1);

    controller.reverseDuration = const Duration(seconds: 1);

    controller.drive(CurveTween(curve: Curves.easeIn));
  }

  @override
  void dispose() {
    _messageController.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.3,
          width: double.infinity,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: HexColor("#7f67fb"),
                        child: Icon(
                          Icons.description,
                          color: Colors.white,
                        ),
                      ),
                      Text('Document'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: HexColor("#ff2e77"),
                        child: Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                        ),
                      ),
                      Text('Camera'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: HexColor("#cb60fa"),
                        child: Icon(
                          CupertinoIcons.photo_fill,
                          color: Colors.white,
                        ),
                      ),
                      Text('Gallery'),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor("#f96533"),
                          child: Icon(
                            Icons.headphones,
                            color: Colors.white,
                          ),
                        ),
                        Text('Audio'),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: HexColor("#7f67fb"),
                          child: Icon(
                            Icons.pin_drop,
                            color: Colors.white,
                          ),
                        ),
                        Text('Location'),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: HexColor("#05a699"),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.currency_rupee_sharp),
                          ),
                        ),
                        Text('Document'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: HexColor("#0097de"),
                        child: Icon(
                          Icons.person_2,
                          color: Colors.white,
                        ),
                      ),
                      Text('Contact'),
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: HexColor("#049d95"),
                        child: Icon(
                          Icons.poll,
                          color: Colors.white,
                        ),
                      ),
                      Text('Poll'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          margin:
              const EdgeInsets.symmetric(horizontal: 10).copyWith(bottom: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        _isHoldingMic
            ? Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: _isHoldingMic ? Colors.black : Colors.transparent,
                  borderRadius: BorderRadius.circular(4),
                ),
                alignment: Alignment.center,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green,
                        child: Text(
                          _formatTimer(),
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 14,
                          ),
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
                  right: size.width * 0.02,
                ),
              )
            : Container(),
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
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.attach_file_rounded,
                              color: Colors.grey[400],
                            ),
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
              GestureDetector(
                onTapDown: (details) {
                  setState(() {
                    _isHoldingMic = true;
                    _secondsElapsed = 0;
                  });
                  _startTimer();
                },
                onTapUp: (details) {
                  setState(() {
                    _isHoldingMic = false;
                  });
                  _stopTimer(); // Stop timer
                },
                child: CircleAvatar(
                  radius: _isHoldingMic ? 32 : 28,
                  backgroundColor: !_isHoldingMic
                      ? HexColor("#1faa68")
                      : HexColor("#046C3B"),
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
              ),
            ],
          ),
        ),
      ],
    );
  }

  String _formatTimer() {
    if (!_isHoldingMic) {
      return '';
    } else {
      int minutes = _secondsElapsed ~/ 60;
      int seconds = _secondsElapsed % 60;
      String minutesStr = minutes.toString().padLeft(2, '0');
      String secondsStr = seconds.toString().padLeft(2, '0');
      return '$minutesStr:$secondsStr';
    }
  }

  void _startTimer() {
    const oneSecond = Duration(seconds: 1);
    Timer.periodic(oneSecond, (Timer timer) {
      if (!_isHoldingMic) {
        timer.cancel();
      } else {
        setState(() {
          _secondsElapsed++;
        });
      }
    });
  }

  void _stopTimer() {
    setState(() {
      _secondsElapsed = 0;
    });
  }
}
