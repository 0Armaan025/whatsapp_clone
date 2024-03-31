import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/common/add_status_widget.dart';
import 'package:whatsapp_clone/common/bottom_navigation_bar.dart';
import 'package:whatsapp_clone/common/status_widget.dart';

class UpdatesView extends StatefulWidget {
  const UpdatesView({super.key});

  @override
  State<UpdatesView> createState() => _UpdatesViewState();
}

class _UpdatesViewState extends State<UpdatesView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            elevation: 0,
            backgroundColor: HexColor("#ccd4dd"),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.edit,
                color: HexColor("#5f6d77"),
              ),
            ),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            onPressed: () {},
            elevation: 0,
            backgroundColor: HexColor("#1dab62"),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_rounded,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(
          "Updates",
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
            icon: Icon(Icons.search),
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
              // status part
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 9),
                    width: size.width * 0.5,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Status",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.475,
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.more_vert_outlined),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0).copyWith(right: 18),
                      child: AddStatusWidget(),
                    ),
                    Row(
                      children: List.generate(
                        15, // Number of StatusWidget instances
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: StatusWidget(key: ValueKey(index)),
                        ), // Use ValueKey with a unique value
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[300],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 9),
                    width: size.width * 0.5,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Channels",
                      style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.475,
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                    "Channels and communities feature\nat the end, since I forgot\nthat these exist lol"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
