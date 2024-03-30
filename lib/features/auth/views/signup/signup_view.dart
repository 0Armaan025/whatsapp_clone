import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 2),
            Center(
              child: Text(
                "Verify your phone number",
                style: TextStyle(color: HexColor("#badfdb")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
