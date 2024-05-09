// import 'package:flutter/material.dart';
// import 'package:flutter_movie/models/mega_silk_way.dart';
// import 'package:flutter_movie/screens/cinema_details_screen.dart';



// class CinemaCard extends StatefulWidget {
//   const CinemaCard({super.key, required this.name, required this.address, required this.phone, required this.image});
//   final String name;
//   final String address;
//   final String phone;
//   final String image;
//   @override
//   // ignore: library_private_types_in_public_api, no_logic_in_create_state
//   _CinemaCardState createState() => _CinemaCardState(name: name, address: address, phone: phone, image: image);
// }

// class _CinemaCardState extends State<CinemaCard> {

//   final String name;
//   final String address;
//   final String phone;
//   final String image;

//   _CinemaCardState({ required this.name, required this.address, required this.phone, required this.image});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 400,
//       height: 350,
//       color: Colors.white,
//       child: Card(
//         color: Colors.white,
//         child: Column(
//           children: [
//             CircleAvatar(
//               radius: 70,
//               backgroundImage: NetworkImage(image),
//             ),  
//             Text(
//               name,
//               style: const TextStyle(
//                 color: Colors.black,
//                 fontSize: 20,
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                  const Icon(
//                     Icons.location_on,
//                     color: Colors.black,
//                     size: 20,
//                   ),
//                   const SizedBox(width: 10), //SizedBox
//                   Text(
//                     softWrap: true,
//                     address,
//                     style: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 15,
//                     ),
//                   ),
//                 ],
//               )
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: 10),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Icon(
//                     Icons.phone,
//                     color: Colors.black,
//                     size: 20,
//                   ),
//                   const SizedBox(width: 10), //SizedBox
//                   Text(
//                     phone,
//                     style: const TextStyle(
//                       color: Colors.black,
//                       fontSize: 15,
//                     ),
//                   ),
//                 ],
//               )
//             ),
//             Container(
//               margin: const EdgeInsets.only(top: 20),
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => CinemaDetails( cinema: MegaSilkWay()) ));
//                 },
//                 child: const Text('View Details'),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
