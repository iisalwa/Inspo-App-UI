// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget favouriteCard(img) {
  return AspectRatio(
    aspectRatio: 2.5 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(img))),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
              0.1,
              0.9
            ], colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.1)
            ])),
      ),
    ),
  );
}
