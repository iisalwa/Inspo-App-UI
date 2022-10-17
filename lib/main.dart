// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:inspo/screens/home_container.dart';
import 'package:inspo/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inspo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const HomeContainer(),
    );
  }
}
