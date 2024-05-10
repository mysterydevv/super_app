import 'package:flutter/material.dart';
import 'package:flutter_movie/components/carousel.dart';
import 'package:flutter_movie/components/data_selection.dart';
import 'package:flutter_movie/models/ICinema.dart';
import 'package:flutter_movie/screens/cinema_screen.dart';

class CinemaDetails extends StatelessWidget {
  final ICinema cinema;

  const CinemaDetails({super.key, required this.cinema});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CinemaDetailsHome(cinema: cinema),
    );
  }
}

class CinemaDetailsHome extends StatefulWidget {
  final ICinema cinema;

  const CinemaDetailsHome({super.key, required this.cinema});
  @override
  // ignore: library_private_types_in_public_api
  _CinemaDetailsHomeState createState() =>
      // ignore: no_logic_in_create_state
      _CinemaDetailsHomeState(cinema: cinema);
}

class _CinemaDetailsHomeState extends State<CinemaDetailsHome> {
  final ICinema cinema;

  _CinemaDetailsHomeState({required this.cinema});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cinema.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CinemaScreenHome()));
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            ImageCarousel(items: cinema.images),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 50),
              child: Center(
                child: Row(
                  children: [
                    const Icon(
                      Icons.location_on,
                      color: Colors.black,
                      size: 20,
                    ),
                    const SizedBox(width: 10), //SizedBox
                    Text(
                      cinema.address,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 50),
              child: Center(
                child: Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      color: Colors.black,
                      size: 20,
                    ),
                    const SizedBox(width: 10), //SizedBox
                    Text(
                      cinema.phone,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const DateSelection(),
            Container(
              margin: const EdgeInsets.only(top: 20, left: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Режим работы:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: cinema.operatingModes.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: ExpansionTile(
                          title: Text(
                            '${cinema.operatingModes[index].name}: ${cinema.operatingModes[index].start} - ${cinema.operatingModes[index].end}',
                            style: const TextStyle(fontSize: 18),
                          ),
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                'Дополнительная информация о режиме работы, если необходимо',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Отзывы:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: cinema.feedbacks.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    cinema.feedbacks[index].name,
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      for (int i = 0;
                                          i <
                                              cinema.feedbacks[index]
                                                  .countOfStars;
                                          i++)
                                        const Icon(Icons.star,
                                            color: Colors.orange, size: 16),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
                              Text(
                                cinema.feedbacks[index].text,
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                cinema.feedbacks[index].date,
                                style: const TextStyle(
                                    fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
