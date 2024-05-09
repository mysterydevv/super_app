import 'package:flutter_movie/models/feedback.dart';
import 'package:flutter_movie/models/operating_mode.dart';

abstract class ICinema{
  late final String name;
  late final String address;
  late final String phone;
  late final List<String> images;
  late final List<FeedBack> feedbacks;
  late final List<OperatingMode> operatingModes;
}