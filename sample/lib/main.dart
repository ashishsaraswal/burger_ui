import 'package:flutter/material.dart';
import 'header.dart';
import 'categories.dart';
import 'burger_list.dart';
import 'burger_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.teal,
        cardColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.teal, centerTitle: true),
        bottomAppBarTheme: BottomAppBarTheme(color: Colors.teal),
        floatingActionButtonTheme:
            FloatingActionButtonThemeData(backgroundColor: Colors.orange),
      ),
      debugShowCheckedModeBanner: false,
      home: Hamberger(),
      routes: {BurgerPage.tag: (_) => BurgerPage()},
    );
  }
}

class Hamberger extends StatefulWidget {
  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Deliver Me'),
            leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
            ],
          ),
          Header(),
          Categories(),
          burgerlist(
            row: 1,
          ),
          burgerlist(
            row: 2,
          ),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.home),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
        child: Container(
          color: Colors.black38,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_alert,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.turned_in,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
