import 'package:flutter/material.dart';
import 'package:whatsapp_clone/features/auth/views/otp/otp_page.dart';
import 'package:whatsapp_clone/features/auth/views/signup/signup_view.dart';
import 'package:whatsapp_clone/features/calls/calls_view.dart';
import 'package:whatsapp_clone/features/chat/chat_view.dart';
import 'package:whatsapp_clone/features/communities/communities_view.dart';
import 'package:whatsapp_clone/features/contact-selection/contact_selection_screen.dart';
import 'package:whatsapp_clone/features/contact-sending/contacts_sending_screen.dart';
import 'package:whatsapp_clone/features/create_community_onboarding/create_community_onboarding_view.dart';
import 'package:whatsapp_clone/features/home/home_screen.dart';
import 'package:whatsapp_clone/features/onboarding/onboarding_view.dart';
import 'package:whatsapp_clone/features/updates/updates_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ContactSendingScreen(),
    );
  }
}
