import 'package:flutter/material.dart';
import 'package:whatsappclone/update_screen.dart';

class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() => ChatScreenState();
}

class ChatScreenState extends State<ChatScreen> {
  final List<String> tabLabels = ['All', 'Unread', 'Favourites', 'Groups', '+'];

  final List<Map<String, String>> chatList = [
    {'name': 'Lalettan', 'message': 'Hello Mone!', 'time': '1:22', 'image': 'assets/images/lalettan.jpg'},
    {'name': 'Mammookka', 'message': 'Da ninte G 63 njn naale onn edukkuva..', 'time': '12:10', 'image': 'assets/images/mammookka.jpg'},
    {'name': 'Rajuettan', 'message': 'Ente ee style alle....!', 'time': '10:05', 'image': 'assets/images/Prithviraj.jpg'},
    {'name': 'Asif Ikka', 'message': 'Machane aa E39 kollaam!', 'time': 'yesterday', 'image': 'assets/images/asif ikka.jpg'},
    {'name': 'Fahad Ikka', 'message': 'Hello', 'time': 'yesterday', 'image': 'assets/images/Fahad Ikka.jpg'},
    {'name': 'Marco', 'message': 'Enikk ee defender mat maatti Glossing aakkanam.', 'time': 'yesterday', 'image': 'assets/images/marco.jpg'},
    {'name': 'Dileepettan', 'message': 'Eda Bha Bha Bha yil Lalettan Ond Ketto!', 'time': 'yesterday', 'image': 'assets/images/dileepettan.jpg'},
    {'name': 'Vijay Annan', 'message': 'En nenjil Kudiyirukkum...', 'time': 'yesterday', 'image': 'assets/images/Thalapathy.jpg'},
    {'name': 'Surya Annan', 'message': 'Call me sir...Just Sir!!', 'time': 'yesterday', 'image': 'assets/images/Surya.jpg'},
    {'name': 'Anaswara', 'message': 'When coming to kochi?', 'time': '30/07/2025', 'image': 'assets/images/anaswara.jpg'},
    {'name': 'Mamitha', 'message': 'When coming to Alapuzha?', 'time': '30/07/2025', 'image': 'assets/images/Mamitha.jpg'},
    {'name': 'Nikhila', 'message': 'When coming to Kochi?', 'time': '30/07/2025', 'image': 'assets/images/Nikhila Vimal.jpg'},
    
    
    ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "WhatsApp",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Spacer(),
                Icon(Icons.qr_code, color: Colors.white),
                SizedBox(width: 5),
                Icon(Icons.photo_camera_sharp, color: Colors.white),
                SizedBox(width: 5),
                Icon(Icons.more_vert, color: Colors.white),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 49, 46, 46),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.white, size: 18),
                    SizedBox(width: 5),
                    Text(
                      'Ask Meta AI or search',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 30,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: tabLabels.length,
                separatorBuilder: (context, index) => SizedBox(width: 25),
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 49, 46, 46),
                    ),
                    child: Text(
                      tabLabels[index],
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Icon(Icons.archive_outlined, color: Colors.white70, size: 20),
                  SizedBox(width: 5),
                  Text("Archived", style: TextStyle(color: Colors.white70)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  final chat = chatList[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(chat['image']!),
                    ),
                    title: Text(
                      chat['name']!,
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      chat['message']!,
                      style: TextStyle(color: Colors.white60),
                    ),
                    trailing: Text(
                      chat['time']!,
                      style: TextStyle(color: Colors.white38, fontSize: 12),
                    ));
                },
              )),
          ],
        )));
  }
}

