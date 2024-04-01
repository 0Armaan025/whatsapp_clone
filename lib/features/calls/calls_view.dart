import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/common/bottom_navigation_bar.dart';
import 'package:whatsapp_clone/common/call_widget.dart';
import 'package:whatsapp_clone/common/create_call_link_widget.dart';
import 'package:whatsapp_clone/common/make_community_widget.dart';

class CallsView extends StatefulWidget {
  const CallsView({super.key});

  @override
  State<CallsView> createState() => _CallsViewState();
}

class _CallsViewState extends State<CallsView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calls",
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
              const SizedBox(height: 5),
              CreateCallLinkWidget(),
              // const SizedBox(height: 5),
              Container(
                width: double.infinity,
                height: 2,
                color: Colors.grey[100],
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: Text(
                  'Recent',
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
              Column(
                children: [
                  CallWidget(),
                  CallWidget(),
                  CallWidget(),
                  CallWidget(),
                  CallWidget(),
                  CallWidget(),
                  CallWidget(),
                  CallWidget(),
                  CallWidget(),
                  CallWidget(),
                  CallWidget(),
                  CallWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
