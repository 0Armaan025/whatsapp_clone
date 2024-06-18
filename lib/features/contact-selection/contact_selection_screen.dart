import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/features/home/home_screen.dart';
import 'package:whatsapp_clone/utils/moveScreen.dart';

class ContactSelectionScreen extends StatefulWidget {
  const ContactSelectionScreen({super.key});

  @override
  State<ContactSelectionScreen> createState() => _ContactSelectionScreenState();
}

class _ContactSelectionScreenState extends State<ContactSelectionScreen> {
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
                child: Icon(Icons.arrow_back)),
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
            Padding(
              padding: const EdgeInsets.only(left: 90),
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
