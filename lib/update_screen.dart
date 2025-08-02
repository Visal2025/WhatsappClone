import 'package:flutter/material.dart';

class UpdateScreen extends StatefulWidget{
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState()=> _UpdateScreenState();

}
  final List<Map<String, String>> statusList = [
    {'name': 'Lalettan', 'image': 'assets/images/lalettan.jpg'},
    {'name': 'Mammookka', 'image': 'assets/images/mammookka.jpg'},
    {'name': 'Asif Ikka', 'image': 'assets/images/asif ikka.jpg'},
    {'name': 'Rajuettan', 'image': 'assets/images/Prithviraj.jpg'},
    {'name': 'Fahad Ikka', 'image': 'assets/images/Fahad Ikka.jpg'},
    {'name': 'Marco', 'image': 'assets/images/marco.jpg'},
    {'name': 'Anaswara', 'image': 'assets/images/anaswara.jpg'},
    {'name': 'Mamitha', 'image': 'assets/images/Mamitha.jpg'},
    {'name': 'Nikhila', 'image': 'assets/images/Nikhila Vimal.jpg'},
    {'name': 'Rajuettan', 'image': 'assets/images/Prithviraj.jpg'},
    {'name': 'Vijay Annan', 'image': 'assets/images/Thalapathy.jpg'},
    {'name': 'Surya Annan', 'image': 'assets/images/Surya.jpg'},
  ];

  final List<Map<String, String>> updatesList = [
    {'name': 'Lalettan', 'message': 'Hello Mone!', 'time': '1:22 pm', 'image': 'assets/images/lalettan.jpg'},
    {'name': 'Mammookka', 'message': 'Da ninte G63 nj naale onn edukkuva.', 'time': '12:10 pm', 'image': 'assets/images/mammookka.jpg'},
    {'name': 'Rajuettan', 'message': 'Ente ee style alle!!', 'time': '10:05 am', 'image': 'assets/images/Prithviraj.jpg'},
    {'name': 'Asif Ikka', 'message': 'Machane aa E39 kollaam!', 'time': 'yesterday', 'image': 'assets/images/asif ikka.jpg'},
    {'name': 'Fahad Ikka', 'message': 'Ithokke Shredhikkande Ambaane:-|', 'time': 'yesterday', 'image': 'assets/images/Fahad Ikka.jpg'},
    {'name': 'Vijay Annan', 'message': 'En nenjil Kudiyirukkum...', 'time': 'yesterday', 'image': 'assets/images/Thalapathy.jpg'},
    {'name': 'Surya Annan', 'message': 'Call me sir...Just Sir!!', 'time': 'yesterday', 'image': 'assets/images/Surya.jpg'},
    {'name': 'Anaswara', 'message': 'When coming to Kochi?', 'time': '30/07/2025', 'image': 'assets/images/anaswara.jpg'},
    {'name': 'Mamitha', 'message': 'When coming to Alappuzha?', 'time': '30/07/2025', 'image': 'assets/images/Mamitha.jpg'},
    {'name': 'Nikhila', 'message': 'When coming to Koxchi?', 'time': '30/07/2025', 'image': 'assets/images/Nikhila Vimal.jpg'},
  ];

class _UpdateScreenState extends State<UpdateScreen>{
    @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: MediaQuery.of(context).size.height * 0.85,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: statusList.length,
              itemBuilder: (context, index) {
                final status = statusList[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.green,
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: AssetImage(status['image']!),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        status['name']!,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ]));
              },
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: updatesList.length,
              itemBuilder: (context, index) {
                final item = updatesList[index];
                return ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage(item['image']!)),
                  title: Text(
                    item['name']!,
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(item['message']!, style: TextStyle(color: Colors.white60)),
                  trailing: Text(item['time']!, style: TextStyle(color: Colors.white38, fontSize: 12)),
                );
              },
            )),
        ]));
  }
}