

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final uuid = const Uuid().v4();

// category
 enum Category{food ,travel, leasure, work}

//  category icons

// ignore: non_constant_identifier_names
final CategoryIcons ={
  Category.food:Icons.lunch_dining,
  Category.leasure:Icons.leak_add,
  Category.travel:Icons.travel_explore,
  Category.work:Icons.work,
} ;

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