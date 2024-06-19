import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/common/new_features_widget.dart';
import 'package:whatsapp_clone/features/contact-selection/contact_tile.dart';
import 'package:whatsapp_clone/features/contact-sending/contact_tile.dart';
import 'package:whatsapp_clone/features/home/home_screen.dart';
import 'package:whatsapp_clone/utils/moveScreen.dart';

class ContactSendingScreen extends StatelessWidget {
  const ContactSendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: HexColor("#1dab62"),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            InkWell(
              onTap: () {
                moveScreen(context, HomeScreen());
              },
              child: Icon(Icons.arrow_back),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contacts to send",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "0 selected",
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(), // Use Spacer to push the following icons to the right
            Icon(
              Icons.search,
              size: 25,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContactTileForSending(
              imageUrl:
                  'https://cdn-icons-png.flaticon.com/128/3135/3135715.png',
              personName: 'any random name',
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ContactTileForSending(
                    imageUrl:
                        'https://cdn-icons-png.flaticon.com/128/3135/3135715.png',
                    personName: 'any random name',
                  );
                },
                itemCount: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
