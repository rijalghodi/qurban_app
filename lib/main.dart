import 'package:flutter/material.dart';
import 'package:purple_qurban_project/call_center.dart';
import './home.dart';
import './call_center.dart';
import './account.dart';
import './theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'air_qurban_project';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      // Declare routes
      // routes: {
      //   // Main initial route
      //   '/': (context) => MyApp(),
      //   // Second route
      //   '/': (context) => SecondPage(),
      // },
      // initialRoute: '/',
      title: _title,
      home: const MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> widgetOptions = <Widget>[
    HomeQurban(),
    const Text(
      'Portofolio!',
      style: optionStyle,
    ),
    const CallCenter(),
    const Account(),
  ];
  static List<String> pageTitle = <String>[
    'Air Raja Qurban',
    'Portofolio',
    'Pusat Bantuan',
    'Profil',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Center(
        child: Text(
          pageTitle[_selectedIndex],
        ),
      ),
    );
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: pageTitle[0],
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart_sharp),
            label: pageTitle[1],
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.phone),
            label: pageTitle[2],
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: pageTitle[3],
            backgroundColor: Theme.of(context).colorScheme.primary,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}
