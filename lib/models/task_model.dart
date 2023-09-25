import 'package:flutter/material.dart';

class TaskModel {
  final String title;
  final String description;
  final String begin;
  final bool isReady;
  final String image;
  final Color color;
  final Color backgoundColor;

  TaskModel({
    required this.title,
    required this.description,
    required this.begin,
    required this.isReady,
    required this.image,
    required this.color,
    required this.backgoundColor,
  });
}
