import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget{
  const CallScreen({super.key});

  @override
  State<CallScreen> createState()=> _CallScreenState();

}
 final List<Map<String, String>> callList = [
    {'name': 'Lalettan', 'time': ' 3.22pm', 'image': 'assets/images/lalettan.jpg', 'type': 'video'},
    {'name': 'Mammookka', 'time': '12.10pm', 'image': 'assets/images/mammookka.jpg', 'type': 'video'},
    {'name': 'Asif Ikka', 'time': 'Yesterday 10.05pm', 'image': 'assets/images/asif ikka.jpg', 'type': 'audio'},
    {'name': 'Rajuettan', 'time': 'Yesterday 14.22pm', 'image': 'assets/images/Prithviraj.jpg', 'type': 'video'},
    {'name': 'Anaswara', 'time': '30/07/2025 09.22pm', 'image': 'assets/images/anaswara.jpg', 'type': 'audio'},
    {'name': 'Mamitha', 'time': '30/07/2025 08.22pm', 'image': 'assets/images/Mamitha.jpg', 'type': 'audio'},
    {'name': 'Vijay Annan', 'time': '30/07/2025 06.22pm', 'image': 'assets/images/Thalapathy.jpg', 'type': 'audio'},
  ];


class _CallScreenState extends State<CallScreen>{
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Calls",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Spacer(),
                Icon(Icons.qr_code, color: Colors.white),
                SizedBox(width: 10),
                Icon(Icons.search, color: Colors.white),
                SizedBox(width: 10),
                Icon(Icons.more_vert, color: Colors.white),
              ],
            ),
            SizedBox(height: 20),
            Text("Favorites", style: TextStyle(color: Colors.white70, fontSize: 14)),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(backgroundImage: AssetImage('assets\images\lalettan.jpg')),
              title: Text("Lalettan", style: TextStyle(color: Colors.white)),
            ),
            SizedBox(height: 10),
            Text("Recent", style: TextStyle(color: Colors.white70, fontSize: 14)),
            Expanded(
              child: ListView.builder(
                itemCount: callList.length,
                itemBuilder: (context, index) {
                  final call = callList[index];
                  return ListTile(
                    leading: CircleAvatar(backgroundImage: AssetImage(call['image']!)),
                    title: Text(call['name']!, style: TextStyle(color: Colors.white)),
                    subtitle: Row(
                      children: [
                        Icon(Icons.call_received, color: Colors.redAccent, size: 15),
                        SizedBox(width: 5),
                        Text(call['time']!, style: TextStyle(color: Colors.grey, fontSize: 13)),
                      ],
                    ),
                    trailing: Icon(
                      call['type'] == 'video' ? Icons.videocam : Icons.call,
                      color: Colors.white,
                    ));
                },
              )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: 3,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ],
      ));
  }
}