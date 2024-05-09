// import 'package:flutter/material.dart';
// import 'package:flutter_movie/components/app_bar.dart';
// import 'package:flutter_movie/components/cinema_card.dart';
// import 'package:flutter_movie/components/nav_bar.dart';

// class CinemaScreen extends StatelessWidget {
//   const CinemaScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: CinemaScreenHome(),
//     );
//   }
// }

// class CinemaScreenHome extends StatefulWidget {
//   const CinemaScreenHome({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _CinemaScreenHomeState createState() => _CinemaScreenHomeState();
// }

// class _CinemaScreenHomeState extends State<CinemaScreenHome> {
//   @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     drawer: const NavBar(),
//     body: Column(
//       children: [
//         const OwnAppBar(),
//         Expanded(
//           child: ListView.builder(
//             itemCount: cinemaList.length,
//             itemBuilder: (context, index) {
//               return CinemaCard(
//                 name: cinemaList[index].name,
//                 address: cinemaList[index].address,
//                 phone: cinemaList[index].phone,
//                 image: cinemaList[index].image,
//               );
//             },
//           ),
//         ),
//       ],
//     ),
//   );
// }
// }
