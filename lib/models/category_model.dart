import 'package:flutter/material.dart';

class AddCategory {
  final String id;
  final String title;
  final Color color;

  AddCategory(
      {required this.id, required this.title, this.color = Colors.grey});
}
