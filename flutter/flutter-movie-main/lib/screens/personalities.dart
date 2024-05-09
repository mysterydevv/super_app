import 'package:flutter/material.dart';
import 'package:flutter_movie/components/app_bar.dart';
import 'package:flutter_movie/components/nav_bar.dart';

class Personalities extends StatefulWidget {
  const Personalities({super.key});
  @override
  State<Personalities> createState() => _PersonalitiesPageState();
}

class _PersonalitiesPageState extends State<Personalities> {
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      drawer: NavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OwnAppBar(),
            CastPage(),
          ],
        ),
      ),
    );
  }
}

class CastPage extends StatelessWidget {
  const CastPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<CastMember> castMembers = [
      CastMember(
        name: 'Leonardo DiCaprio',
        role: 'Cobb',
        originalImageAsset: 'lib/images/dicaprio.png',
        age: 47,
        dateOfBirth: 'November 11, 1974',
        sex: 'Male',
      ),
      CastMember(
        name: 'Tom Berenger',
        role: 'Browning',
        originalImageAsset: 'lib/images/berenger.png',
        age: 72,
        dateOfBirth: 'May 31, 1949',
        sex: 'Male',
      ),
      CastMember(
        name: 'Ken Watanabe',
        role: 'Saito',
        originalImageAsset: 'lib/images/watanabe.png',
        age: 62,
        dateOfBirth: 'October 21, 1959',
        sex: 'Male',
      ),
      CastMember(
        name: 'Cillian Murphy',
        role: 'Robert Fischer',
        originalImageAsset: 'lib/images/murphy.png',
        age: 45,
        dateOfBirth: 'May 25, 1976',
        sex: 'Male',
      ),
      CastMember(
        name: 'Joseph Gordon-Levitt',
        role: 'Arthur',
        originalImageAsset: 'lib/images/joseph.png',
        age: 40,
        dateOfBirth: 'February 17, 1981',
        sex: 'Male',
      ),
      CastMember(
        name: 'Dileep Rao',
        role: 'Yusuf',
        originalImageAsset: 'lib/images/Dileep.png',
        age: 47,
        dateOfBirth: 'July 29, 1974',
        sex: 'Male',
      ),
      CastMember(
        name: 'Marion Cotillard',
        role: 'Mal',
        originalImageAsset: 'lib/images/marion.png',
        age: 46,
        dateOfBirth: 'September 30, 1975',
        sex: 'Female',
      ),
      CastMember(
        name: 'Tom Hardy',
        role: 'Eames',
        originalImageAsset: 'lib/images/hardy.png',
        age: 44,
        dateOfBirth: 'September 15, 1977',
        sex: 'Male',
      ),
      CastMember(
        name: 'Michael Caine',
        role: 'Miles',
        originalImageAsset: 'lib/images/michael.png',
        age: 89,
        dateOfBirth: 'March 14, 1933',
        sex: 'Male',
      ),
      CastMember(
        name: 'Lukas Haas',
        role: 'Nash',
        originalImageAsset: 'lib/images/lukas.png',
        age: 45,
        dateOfBirth: 'April 16, 1976',
        sex: 'Male',
      ),
      CastMember(
        name: 'Elliot Page',
        role: 'Ariadne',
        originalImageAsset: 'lib/images/elliot.png',
        age: 35,
        dateOfBirth: 'February 21, 1987',
        sex: 'Non-binary',
      ),
      CastMember(
        name: 'Tomás Arana',
        role: 'Fischer\'s lawyer',
        originalImageAsset: 'lib/images/tomas.png',
        age: 69,
        dateOfBirth: 'April 3, 1955',
        sex: 'Male',
      ),
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: castMembers.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            _showActorDetails(context, castMembers[index]);
          },
          child: CastMemberCard(castMember: castMembers[index]),
        );
      },
    );
  }

  void _showActorDetails(BuildContext context, CastMember castMember) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ActorDetailsScreen(castMember: castMember),
      ),
    );
  }
}

class CastMember {
  final String name;
  final String role;
  final String originalImageAsset;
  final int age;
  final String dateOfBirth;
  final String sex;

  CastMember({
    required this.name,
    required this.role,
    required this.originalImageAsset,
    required this.age,
    required this.dateOfBirth,
    required this.sex,
  });
}

class CastMemberCard extends StatelessWidget {
  final CastMember castMember;

  const CastMemberCard({super.key, required this.castMember});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(castMember.originalImageAsset),
            ),
            const SizedBox(height: 8),
            Text(
              castMember.name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              castMember.role,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}

class ActorDetailsScreen extends StatelessWidget {
  final CastMember castMember;

  const ActorDetailsScreen({super.key, required this.castMember});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(castMember.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(castMember.originalImageAsset),
            ),
            const SizedBox(height: 16),
            Text('Name: ${castMember.name}'),
            Text('Role: ${castMember.role}'),
            Text('Age: ${castMember.age}'),
            Text('Date of Birth: ${castMember.dateOfBirth}'),
            Text('Sex: ${castMember.sex}'),
          ],
        ),
      ),
    );
  }
}

