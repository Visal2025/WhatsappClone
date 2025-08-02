import 'package:flutter/material.dart';
import 'package:whatsappclone/call_screen.dart';
import 'package:whatsappclone/chat_screen.dart';
import 'package:whatsappclone/community_screen.dart';
import 'package:whatsappclone/update_screen.dart';

class BottomNavigationbar extends StatefulWidget {
  @override
  State<BottomNavigationbar> createState() => _BottomNavigationbarState();
}

class _BottomNavigationbarState extends State<BottomNavigationbar> {
  int selectedIndex = 0;
  final List screens = [
    ChatScreen(),
    UpdateScreen(),
    CommunityScreen(),
    CallScreen(),
    
    ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,backgroundColor: Colors.grey,
        selectedItemColor: Color.fromARGB(255, 54, 244, 67),
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Updates"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Community"),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Calls"),
        ],
      ),
    );
  }
}
