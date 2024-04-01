import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/common/bottom_navigation_bar.dart';
import 'package:whatsapp_clone/common/make_community_widget.dart';

class CommunitiesView extends StatefulWidget {
  const CommunitiesView({super.key});

  @override
  State<CommunitiesView> createState() => _CommunitiesViewState();
}

class _CommunitiesViewState extends State<CommunitiesView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Communities",
          style: GoogleFonts.poppins(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_enhance_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      bottomNavigationBar: BuildNavBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 2),
              Container(
                width: double.infinity,
                height: 1,
                color: const Color.fromARGB(255, 225, 225, 225),
              ),
              const SizedBox(
                height: 2,
              ),
              ListTile(
                leading: MakeCommunityWidget(),
                title: Text(
                  "New Community",
                  style: GoogleFonts.poppins(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 10,
                width: double.infinity,
                color: HexColor("#f7f7fa"),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Text("Coming soon..."),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
