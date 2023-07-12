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
    );
  }
}