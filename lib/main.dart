import 'package:flutter/material.dart';
import 'package:whatsappclone/bottom_navigationbar.dart';
import 'package:whatsappclone/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:BottomNavigationbar(),
      debugShowCheckedModeBanner: false,
    );
  }
}