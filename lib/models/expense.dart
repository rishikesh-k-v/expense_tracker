import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
var formatter = DateFormat.yMd();

enum Category { food, fuel, bills, entertainment, other }

const categoryIcons = {
  Category.bills: Icons.forum,
  Category.entertainment: Icons.movie,
  Category.food: Icons.lunch_dining,
  Category.fuel: Icons.gas_meter,
};

class Expense {
  Expense({
    required this.amount,
    required this.date,
    required this.title,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }
}
