import 'package:flutter/material.dart';

class Crafting extends StatefulWidget {
  const Crafting({super.key});

  @override
  State<Crafting> createState() => _CraftingState();
}

class _CraftingState extends State<Crafting> {
  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
            decoration: InputDecoration(
              labelText: 'Search food or events',
              labelStyle: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontFamily: 'Lexend',
              ),
              suffixIcon: Icon(
                Icons.search,
                color: Color(0xFF6318AF),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
            Text(
              'Start Crafting',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color(0xFF6318AF),
                fontSize: 20,
                fontWeight: FontWeight.w400
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Plate(),
          ],
      ),
    );
  }
  
  Widget Plate() =>
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Card(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10)
              ),
            ),
                    child: Image.asset('assets/def.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Default Plater',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
          ),
          ),
           Card(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Image.asset('assets/def.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Default Plater',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
          ),
          ),
              ],
            );
}
