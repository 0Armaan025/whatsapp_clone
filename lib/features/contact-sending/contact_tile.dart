import 'package:flutter/material.dart';

class ContactTileForSending extends StatefulWidget {
  final String imageUrl;
  final String personName;
  const ContactTileForSending(
      {super.key, required this.imageUrl, required this.personName});

  @override
  State<ContactTileForSending> createState() => _ContactTileForSendingState();
}

class _ContactTileForSendingState extends State<ContactTileForSending> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
      width: double.infinity,
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(widget.imageUrl),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              widget.personName,
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
