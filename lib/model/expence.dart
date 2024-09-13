

// import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final uuid = const Uuid().v4();

// category
 enum Category{food ,travel, leasure, work}

//  date format

final formatDate = DateFormat.yMd();

class ExpenceModel {

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  ExpenceModel({
    required this.amount,
    required this.date,
    required this.title,
    required this.category
  }) :id =uuid;

  String get getFormatedDate{
    return formatDate.format(date);
  }
}