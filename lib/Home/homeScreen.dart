import 'package:flutter/material.dart';
import 'package:food/Home/crafting.dart';
import 'package:food/Home/header.dart';
import 'package:food/Home/mainCourse.dart';
import 'package:food/Home/scroll.dart';
import 'package:food/Home/service.dart';
import 'package:food/Home/starter.dart';
import 'package:food/Home/topCat.dart';
import 'package:food/Home/work.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20,),
          child: Column(
            children: [
              Home(),
              Scroll(),
              Crafting(),
              TopCat(),
              Starter(),
              mainCourse(),
              // Service(),
              Next(),

            ],
          ),
        ),
      ),
      floatingActionButton: RemoveSplashFab(onPressed: (){}, 
      child: Image(image: AssetImage('assets/Logo.png'),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF6318AF),
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home, ),
          ),
          BottomNavigationBarItem(
            label: 'Wishlist',
            icon: Icon(Icons.favorite_border_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Order',
            icon: Icon(Icons.fastfood_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Porfile',
            icon: Icon(Icons.account_circle_outlined),
          ),
      ]),
    );
  }
}

class RemoveSplashFab extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const RemoveSplashFab({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.all(0),
          
          child: child,
        ),
      ),
    );
  }
}