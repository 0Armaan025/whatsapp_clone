import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  String otpText = "";
  final TextEditingController _otpController = TextEditingController();

  // String phoneNumber = "";

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _otpController.dispose();
  }

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
                  "Verifying your phone number",
                  style: TextStyle(
                    color: HexColor("#0f8b7d"),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 58.0),
                  child: OTPTextField(
                    
                    length: 6,
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 20,
                    style: const TextStyle(fontSize: 17),
                    // textFieldAlignment: MainAxisAlignment.spaceEvenly,
                    fieldStyle: FieldStyle.underline,

                    onCompleted: (pin) {
                      print("Completed: " + pin);
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "Enter 6-digit code",
                  style: TextStyle(color: HexColor("#909090")),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.message_outlined,
                    color: HexColor("#909090"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      "Try Again!",
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 1,
                color: const Color.fromARGB(255, 214, 214, 214),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
