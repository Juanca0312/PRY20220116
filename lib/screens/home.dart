import 'package:flutter/material.dart';

enum Menu { itemOne, itemTwo, itemThree, itemFour }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _selectedMenu = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: PopupMenuButton<Menu>(
            icon: const Icon(Icons.menu),
            onSelected: (Menu item) {
              setState(() {
                _selectedMenu = item.name;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
                  const PopupMenuItem<Menu>(
                    value: Menu.itemOne,
                    child: Text('Item 1'),
                  ),
                  const PopupMenuItem<Menu>(
                    value: Menu.itemTwo,
                    child: Text('Item 2'),
                  ),
                  const PopupMenuItem<Menu>(
                    value: Menu.itemThree,
                    child: Text('Item 3'),
                  ),
                  const PopupMenuItem<Menu>(
                    value: Menu.itemFour,
                    child: Text('Item 4'),
                  ),
                ]),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: CircleAvatar(
              child: Icon(Icons.person_outline_rounded),
            ),
          ),
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30),
          child: Text('hola')),
    );
  }
}
