import 'package:flutter_movie/models/user.dart';

class Actor extends User{
  late String role;
  late List<dynamic> movies; 
  late List<dynamic> awards;
  late String biography;

  Actor({
    required super.name,
    required super.age,
    required super.image,
    required this.role,
    required this.movies,
    required this.awards,
    required this.biography,
  });

  static Actor fromJson(actor) {
    return Actor(
      name: actor['name'],
      age: actor['age'],
      image: actor['image'],
      role: actor['role'],
      movies: actor['films'] ,
      awards: actor['awards'] ,
      biography: actor['biography'],
    );
  }
}