import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/common/bottom_navigation_bar.dart';
import 'package:whatsapp_clone/common/message_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {},
        backgroundColor: HexColor("#1dab62"),
        child: IconButton(
          icon: Icon(
            Icons.create_new_folder,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: CustomScrollView(
        physics: const PageScrollPhysics(),
        slivers: [
          SliverAppBar(
            onStretchTrigger: () async {
              // Triggers when stretching
            },
            centerTitle: false,
            // titleSpacing: ,

            stretchTriggerOffset: 300.0,
            // flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'WhatsApp',
              style: TextStyle(
                color: HexColor("#23a763"),
                fontWeight: FontWeight.bold,
              ),
            ),
            // ),
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
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return MessageTile();
              },
              childCount: 3,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BuildNavBar(),
    );
  }
}
