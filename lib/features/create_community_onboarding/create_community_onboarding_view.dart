import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CreateCommunityOnboardingView extends StatefulWidget {
  const CreateCommunityOnboardingView({super.key});

  @override
  State<CreateCommunityOnboardingView> createState() =>
      CreateCommunityOnboardingViewState();
}

class CreateCommunityOnboardingViewState
    extends State<CreateCommunityOnboardingView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 12),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 2),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.cancel_outlined,
                    color: Colors.grey[400],
                    size: 25,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Center(
                child: Container(
                  width: double.infinity,
                  height: size.height * 0.2,
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT27NeHqanD9aJnayTri5mXpf0J4YiHxyk6aw&usqp=CAU'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  "Create a new community",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Center(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: Text(
                    textAlign: TextAlign.center,
                    "Bring together a neighborhood, school or more. Create topic-based groups for members, and easily send them admin announcements.",
                    style: TextStyle(color: Colors.grey[500]),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "See example communities",
                  style: TextStyle(
                    color: HexColor("#5c89b9"),
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.34,
              ),
              Container(
                alignment: Alignment.center,
                height: size.height * 0.05,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: HexColor("#1dab60"),
                ),
                child: Text(
                  "Get started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
