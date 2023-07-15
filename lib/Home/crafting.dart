import 'package:flutter/material.dart';

class Crafting extends StatefulWidget {
  const Crafting({Key? key}) : super(key: key);

  @override
  State<Crafting> createState() => _CraftingState();
}

class _CraftingState extends State<Crafting> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
     return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400, ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search For food and events',
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Perform search action
                },
              ),
            ],
          ),
        ),

          SizedBox(height: 20,),
          Text('Start crafting',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Color(0xFF6318AF),
          ),
          ),
          SizedBox(height: 20,),
          Row(
          children: [
            Flexible(
              flex: 1,
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/def.png',
                      fit: BoxFit.cover,
                      height: 100,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Default Platers',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: screenWidth * .01), // Adding some spacing between the cards
            Flexible(
              flex: 1,
              child: Card(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/def.png',
                      fit: BoxFit.cover,
                      height: 100,
                      width: double.infinity,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Craft Your Own',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
SizedBox(height: 20,),

        ],
      ),
    );
  }
}
