import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({Key? key}) : super(key: key);

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  final List<String> favItems = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Favourites'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 8),
          child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(favItems.length, (index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                  child: Material(
                    color: Color.fromRGBO(255, 193, 7, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                      onTap: () {
                        print('This is index $index');
                      },
                      child: Column(
                        children: [
                          Ink.image(
                              height: 150,
                              width: 200,
                              fit: BoxFit.cover,
                              image: AssetImage(favItems[index])),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Item $index',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              })),
        ));
  }
}
