import 'package:flutter/material.dart';
import 'package:food/Home/homeScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {

  final name = TextEditingController();
  final email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new_rounded)),
              ],
            ),
            SizedBox(
              height: 40,
            ),

            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Just a step away !',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Lexend',
                            color: Colors.black,
                            decoration: TextDecoration.none),
                            ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: name,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'Lexend',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: email,
                    decoration: InputDecoration(
                      labelText: 'Email ID*',
                      labelStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        fontFamily: 'Lexend',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
        ),
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextButton(
          onPressed: () {
            CollectionReference users = FirebaseFirestore.instance.collection('users');
            users.add({
              'name': name.text,
              'email': email.text,
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Text('Let\'s start', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),),
          style: TextButton.styleFrom(
            backgroundColor: Color(0xFF6318AF),
            primary: Colors.white,
            minimumSize: Size(400, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
