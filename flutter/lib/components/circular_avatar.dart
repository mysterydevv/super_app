import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';

class OwnCircularAvatar extends StatefulWidget {
  final Future<String> image;

  const OwnCircularAvatar({super.key, required this.image});
  @override
  State<StatefulWidget> createState() {
    return OwnCircularAvatarState();
  }
}

class OwnCircularAvatarState extends State<OwnCircularAvatar> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: widget.image,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircleAvatar(
            radius: 100,
            backgroundColor: Colors.grey,
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          Uint8List bytes = base64Decode(snapshot.data!);
          return CircleAvatar(
            radius: 100,
            backgroundImage: MemoryImage(bytes),
          );
        } else {
          return const CircleAvatar(
            radius: 100,
            backgroundColor: Colors.grey,
            child: Icon(Icons.error),
          );
        }
      },
    );
  }
}
