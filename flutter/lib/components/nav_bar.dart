import 'package:flutter/material.dart';
import 'package:flutter_movie/main.dart';
import 'package:flutter_movie/screens/stuff_screen.dart';
import 'package:flutter_movie/screens/news.dart';
import 'package:flutter_movie/screens/cast.dart';
import 'package:flutter_movie/screens/profile_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 160,
            color: const Color.fromRGBO(0, 0, 0, 1.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'lib/images/logo.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      '',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text(''),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MyApp()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.bar_chart),
            title: const Text('Stuff'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StuffScreen()));

            },
          ),
          ListTile(
            leading: const Icon(Icons.people),
            title: const Text('Cast'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Personalities()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('News'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const News()));
            },
          ),
          // ListTile(
          //   leading: const Icon(Icons.location_on),
          //   title: const Text('Find Cinemas'),
          //   onTap: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => const CinemaScreen()));
          //   },
          // ),
          ListTile(
            leading: const Icon(
              Icons.person,
            ),
            title: const Text('Profile'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
            },
          )
        ],
      ),
    );
  }
}
