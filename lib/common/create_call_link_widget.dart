import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CreateCallLinkWidget extends StatefulWidget {
  const CreateCallLinkWidget({super.key});

  @override
  State<CreateCallLinkWidget> createState() => _CreateCallLinkWidgetState();
}

class _CreateCallLinkWidgetState extends State<CreateCallLinkWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.08,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 10),
          CircleAvatar(
            radius: 25,
            backgroundColor: HexColor("#1dab62"),
            child: Icon(
              Icons.link,
              color: Colors.white,
              size: 28,
            ),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 2),
              Text(
                "Create call link",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "Share a link for your WhatsApp call",
                style: TextStyle(color: Colors.grey[500]),
              )
            ],
          ),
        ],
      ),
    );
  }
}
