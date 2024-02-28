import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WeatherDetail extends StatelessWidget {
  final String title;
  final IconData icon;

  const WeatherDetail({ required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 24, color: Colors.pink),
        SizedBox(height: 4),
        Text(
          title,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class YourRooms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define an array of room data
    final List<Map<String, dynamic>> rooms = [
      {
        'name': 'Living Room',
        'devices': 7,
        'image': 'assets/one.PNG',
      },
      {
        'name': 'Bedroom',
        'devices': 6,
        'image': 'assets/two.PNG',
      },
      {
        'name': 'Kitchen',
        'devices': 5,
        'image': 'assets/three.PNG',
      },
      {
        'name': 'Study Room',
        'devices': 4,
        'image': 'assets/four.PNG',
      },
      // Add more rooms as needed
    ];

    return Container(
      height: 350,
      child: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.8,
        ),
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          final room = rooms[index];
          return RoomCard(
            roomName: room['name'],
            devicesCount: room['devices'],
            imageName: room['image'],
          );
        },
      ),
    );
  }
}


class RoomCard extends StatelessWidget {
  final String roomName;
  final int devicesCount;
  final String imageName;

  RoomCard({required this.roomName, required this.devicesCount, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(imageName), // Use the correct asset path
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    roomName,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '$devicesCount Devices',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}