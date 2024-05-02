import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/features/image_enlarger/image_enlarger_screen.dart';

class MessageImageTile extends StatefulWidget {
  const MessageImageTile({super.key});

  @override
  State<MessageImageTile> createState() => _MessageImageTileState();
}

class _MessageImageTileState extends State<MessageImageTile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: HexColor("#dff1dc"),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(3),
          topRight: Radius.circular(8),
          topLeft: Radius.circular(8),
        ),
      ),
      width: size.width * 0.5,
      margin: EdgeInsets.all(8).copyWith(left: size.width * 0.3),
      child: Padding(
        padding: const EdgeInsets.all(8.0).copyWith(right: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EnlargedImageScreen(
                      imageUrl:
                          'https://images.unsplash.com/photo-1714165860569-b4b8e1dd7096?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                );
              },
              child: Container(
                width: size.width * 0.6,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1714165860569-b4b8e1dd7096?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMHx8fGVufDB8fHx8fA%3D%3D'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Container(
                width: size.width * 0.6,
                margin: const EdgeInsets.only(top: 4),
                child: Text(
                  "Amet dolore cupidatat ad quis consectetur labore Lorem officia. Est est cupidatat laborum dolore pariatur quis nulla sit. Adipisicing sint cillum ex quis aute reprehenderit anim laborum laborum ad cupidatat nostrud. Laboris duis in eiusmod duis excepteur veniam ut anim mollit ut nulla consectetur mollit sint.",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
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
          ],
        ),
      ),
    );
  }
}
