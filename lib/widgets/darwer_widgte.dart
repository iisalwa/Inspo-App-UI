import 'package:flutter/material.dart';
import 'package:inspo/widgets/drawer_menu.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[drawerHeader(context), drawerMenuItems(context)],
        )),
      );
}
