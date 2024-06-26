import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/common/new_features_widget.dart';
import 'package:whatsapp_clone/features/contact-selection/contact_tile.dart';
import 'package:whatsapp_clone/features/home/home_screen.dart';
import 'package:whatsapp_clone/utils/moveScreen.dart';

class ContactSelectionScreen extends StatelessWidget {
  const ContactSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
                    "Select contact",
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "266 Contacts",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
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
            const SizedBox(width: 8), // Add some space between icons
            Icon(
              Icons.more_vert_outlined,
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
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: NewFeaturesWidget(),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Text(
                "Contacts on WhatsApp",
                style: TextStyle(color: Colors.grey[500], fontSize: 14),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ContactTile(
                    name: 'Armaan',
                    profilePictureUrl:
                        'https://cdn-icons-png.flaticon.com/128/3135/3135715.png',
                  );
                },
                itemCount: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
