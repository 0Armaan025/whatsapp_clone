import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:whatsapp_clone/constants/constants.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => OnboardingViewState();
}

class OnboardingViewState extends State<OnboardingView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Center(
                child: Text(
                  "$appName",
                  style: TextStyle(
                    color: HexColor("#717878"),
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "An easy tool for individuals to communicate\nwith their known ones.",
                  style: TextStyle(
                    color: HexColor("#9eadad"),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 80),
              Center(
                child: CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1623116135497-a90bdc0ddca9?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZG9vZGxlc3xlbnwwfHwwfHx8MA%3D%3D'),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    "Tap 'Agree and continue' to accept the Whatsapp Terms of Service and Privacy Policy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: HexColor("#999e9d")),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: size.height * 0.06,
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 60),
                  decoration: BoxDecoration(
                      color: HexColor("#28d363"),
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    "AGREE AND CONTINUE",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
