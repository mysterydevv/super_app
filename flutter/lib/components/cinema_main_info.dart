import 'package:flutter/material.dart';

class CinemaMainInfo extends StatelessWidget {
  static const String year = '2019';
  static const String duration = '2h 22m';
  static const String rating = '6.4/10';

  const CinemaMainInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInfoItem(Icons.access_time_outlined, year),
            _buildInfoItem(Icons.camera_roll_sharp, duration),
            _buildInfoItem(Icons.stars_rounded, rating),
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            shape: RoundedRectangleBorder( // Set the button shape to square
              borderRadius: BorderRadius.circular(0),
            ),
          ),
          child: Text(
            'Buy Tickets',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 20),
        Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ],
    );
  }

  Widget _buildInfoItem(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 30,
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
