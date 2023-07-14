import 'package:flutter/material.dart';

class DefaultMenu extends StatefulWidget {
  const DefaultMenu({super.key});

  @override
  State<DefaultMenu> createState() => _DefaultMenuState();
}

class _DefaultMenuState extends State<DefaultMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
      children: [
    Flexible(
      flex: 1,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text('Default Menu 2', style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset('assets/default.png'),
                  ],
                ),
                SizedBox(width: 0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('3 starters',style: TextStyle(fontSize: 12),),
                    Text('3 maincours',style: TextStyle(fontSize: 12),),
                    Text('3 deserts',style: TextStyle(fontSize: 12),),
                    Text('3 drinks',style: TextStyle(fontSize: 12),),
                  ],
                  ),
                ),
              ]
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.account_circle,
                          size: 14,
                          color: Colors.grey.shade400,     
                          ),
                          Text('  Min 800',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                          ),
                        ],
                      ),
            ),
            SizedBox(height: 8,),
            Padding(
            padding: const EdgeInsets.only(left: 8.0),
              child: Text('Starte at ₹ 777',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF6318AF),
              ),
              ),
            ),
            SizedBox(height: 8,)
          ],
        ),
      ),
    ),
    SizedBox(width: 5), // Adding some spacing between the cards
    Flexible(
      flex: 1,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text('Default Menu 2', style: TextStyle(fontWeight: FontWeight.w500),),
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset('assets/default.png'),
                  ],
                ),
                SizedBox(width: 0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('3 starters',style: TextStyle(fontSize: 12),),
                    Text('3 maincours',style: TextStyle(fontSize: 12),),
                    Text('3 deserts',style: TextStyle(fontSize: 12),),
                    Text('3 drinks',style: TextStyle(fontSize: 12),),
                  ],
                  ),
                ),
              ]
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.account_circle,
                          size: 14,
                          color: Colors.grey.shade400,     
                          ),
                          Text('  Min 800',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade600,
                          ),
                          ),
                        ],
                      ),
            ),
            SizedBox(height: 8,),
            Padding(
            padding: const EdgeInsets.only(left: 8.0),
              child: Text('Starte at ₹ 777',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF6318AF),
              ),
              ),
            ),
            SizedBox(height: 8,)
          ],
        ),
      ),
    ),
  ],
)

        ],
      ),
    );
  }
}
