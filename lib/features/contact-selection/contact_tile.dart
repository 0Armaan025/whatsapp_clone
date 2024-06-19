import 'package:flutter/material.dart';

class ContactTile extends StatefulWidget {
  final String profilePictureUrl;
  final String name;
  const ContactTile(
      {super.key, required this.profilePictureUrl, required this.name});

  @override
  State<ContactTile> createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        left: 8,
        top: 8,
        bottom: 8,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              widget.profilePictureUrl,
            ),
          ),
          const SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "bio text",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
