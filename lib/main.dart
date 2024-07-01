import 'package:flutter/material.dart';
import 'package:task_round_frontend/routes.dart';
import 'package:task_round_frontend/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const home(),
      routes: {
        homeRoute:(context) => const home()
      },
    );}}