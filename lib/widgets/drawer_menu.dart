// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:inspo/screens/home_page.dart';
import 'package:inspo/screens/favourites_page.dart';
import 'package:inspo/screens/profile_page.dart';

Widget drawerHeader(BuildContext context) => Material(
      color: Colors.amber,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => ProfilePage()));
        },
        child: Container(
          padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/4.jpg'),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                'Name Name',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              Text(
                'name@example.com',
                style: TextStyle(fontSize: 16, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
Widget drawerMenuItems(BuildContext context) => Container(
      padding: EdgeInsets.all(20),
      child: Wrap(
        children: [
          ListTile(
            leading: Icon(
              Icons.home_filled,
              color: Colors.black,
            ),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
          ListTile(
            leading: Icon(
              Icons.favorite,
              color: Colors.black,
            ),
            title: Text('Favourites'),
            onTap: () {
              Navigator.pop(context);
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FavouritesPage()));
            },
          ),
          Divider(
            color: Colors.black54,
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: Text('Settings'),
            onTap: () {
              print("Settings tap");
            },
          )
        ],
      ),
    );
