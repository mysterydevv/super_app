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
        name: 'Carrie Fisher',
        role: 'Princess Leia',
        originalImageAsset: 'lib/images/dicaprio/dicaprio.png',
        age: 60,
        dateOfBirth: '10.21.1956-2016',
        sex: 'Female',
      ),
      CastMember(
        name: 'Mark Hamill',
        role: 'Luke Skywalker',
        originalImageAsset: 'lib/images/berenger.png',
        age: 72,
        dateOfBirth: '09.25.1951',
        sex: 'Male',
      ),
      CastMember(
        name: 'Daisy Ridley',
        role: 'Rey',
        originalImageAsset: 'lib/images/watanabe.png',
        age: 32,
        dateOfBirth: '04.10.1992',
        sex: 'Female',
      ),
      CastMember(
        name: 'John Boyega',
        role: 'Finn',
        originalImageAsset: 'lib/images/murphy.png',
        age: 32,
        dateOfBirth: '03.17.1992',
        sex: 'Male',
      ),
      CastMember(
        name: 'Billy De Williams',
        role: 'Lando Calrissian',
        originalImageAsset: 'lib/images/joseph.png',
        age: 87,
        dateOfBirth: '04.06.1937',
        sex: 'Male',
      ),
      CastMember(
        name: 'Oscar Isaac',
        role: 'Poe Dameron',
        originalImageAsset: 'lib/images/Dileep.png',
        age: 45,
        dateOfBirth: '03.09.1979',
        sex: 'Male',
      ),
      CastMember(
        name: 'Keri Russel',
        role: 'Zorii Bliss',
        originalImageAsset: 'lib/images/keri.png',
        age: 48,
        dateOfBirth: '03.23.1976',
        sex: 'Female',
      ),
      CastMember(
        name: 'Adam Driver',
        role: 'Kylo Ren',
        originalImageAsset: 'lib/images/marion.png',
        age: 40,
        dateOfBirth: '11.19.1983',
        sex: 'Male',
      ),
      CastMember(
        name: 'Kelly Marine Tran',
        role: 'Rose Tico',
        originalImageAsset: 'lib/images/michael.png',
        age: 35,
        dateOfBirth: '01.17.1989',
        sex: 'Female',
      ),
      CastMember(
        name: 'Naomi Ackie',
        role: 'Jannah',
        originalImageAsset: 'lib/images/lukas.png',
        age: 31,
        dateOfBirth: '11.02.1992',
        sex: 'Female',
      ),
      CastMember(
        name: 'Dominic Monaghan',
        role: 'Beaumont',
        originalImageAsset: 'lib/images/elliot.png',
        age: 47,
        dateOfBirth: '12.08.1976',
        sex: 'Male',
      ),
      CastMember(
        name: 'Tomás Arana',
        role: 'Pryde',
        originalImageAsset: 'lib/images/tomas.png',
        age: 67,
        dateOfBirth: '05.05.1957',
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

