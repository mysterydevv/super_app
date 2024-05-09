import 'package:flutter_movie/models/ICinema.dart';
import 'package:flutter_movie/models/feedback.dart';
import 'package:flutter_movie/models/operating_mode.dart';

class MegaSilkWay extends ICinema{
  
  @override
  // ignore: overridden_fields
  late final String name = 'Chaplin MEGA Silk Way';
  @override
  // ignore: overridden_fields
  late final String address = 'Астана, ТРЦ «MEGA Silk Way»\n (территория EXPO), 2-й этаж';
  @override
  // ignore: overridden_fields
  late final String phone = '87770760052';
  @override
  // ignore: overridden_fields
  late final List<String> images = ['https://cdn.kino.kz/cinema/144/g800x534_1.webp','https://cdn.kino.kz/cinema/146/g800x534_8.jpg','https://cdn.kino.kz/cinema/146/g800x534_1.jpg','https://cdn.kino.kz/cinema/146/g800x534_2.jpg'];
  @override
  // ignore: overridden_fields
  late final List<FeedBack> feedbacks = [
    FeedBack(name: 'Aigerim',countOfStars: 4,  text: 'I liked the cinema, the sound is good, the picture is clear, the seats are comfortable, the popcorn is delicious', date: '2021-10-10'),
    FeedBack(name: 'Aruzhan', countOfStars: 5,  text: 'I liked the cinema, the sound is good, the picture is clear, the seats are comfortable, the popcorn is delicious', date: '2021-10-10'),
    FeedBack(name: 'Aidana', countOfStars: 3, text: 'I liked the cinema, the sound is good, the picture is clear, the seats are comfortable, the popcorn is delicious', date: '2021-10-10'),
    FeedBack(name: 'Aizhan', countOfStars: 4, text: 'I liked the cinema, the sound is good, the picture is clear, the seats are comfortable, the popcorn is delicious', date: '2021-10-10'),
  ];

  @override
  // ignore: overridden_fields
  late final List<OperatingMode> operatingModes = [
    OperatingMode(start: '10:00', end: '00:00', name: 'Пн'),
    OperatingMode(start: '10:00', end: '00:00', name: 'Вт'),
    OperatingMode(start: '10:00', end: '00:00', name: 'Ср'),
    OperatingMode(start: '10:00', end: '00:00', name: 'Чт'),
    OperatingMode(start: '10:00', end: '00:00', name: 'Пт'),
    OperatingMode(start: '10:00', end: '00:00', name: 'Сб'),
    OperatingMode(start: '10:00', end: '00:00', name: 'Вс'),
  ];
}