import 'package:flutter/material.dart';

class Service extends StatelessWidget {
  final List<String> imagePaths = [
    'assets/ice.png',
    'assets/ice.png',
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 2,),
        Text('Services',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8,),
        Container(
          height: screenHeight * 0.42,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return Container(
                width: screenWidth * 0.8,
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: Card(
                  child: Stack(
                    children: [
                      Image.asset(
                        imagePaths[index],
                        alignment: Alignment.center,
                        height: screenHeight * 0.21,
                        width: screenWidth * 0.8,
                      ),
                      Positioned(
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFF6318AF),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          'Recommended',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                        ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                            child: Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Image.asset('assets/Signature.png',),
                                      SizedBox(width: 3,),
                                      Text('Signature', style: TextStyle(color: Color(0xFF6318AF), fontSize: 18, fontWeight: FontWeight.w500),),
                                    ],),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Icon(Icons.star_purple500 , color: Color(0xFF6318AF), size: 16,),
                                        SizedBox(width: 5,),
                                        Text('High Quality Disposable Cutlery', style: TextStyle( fontSize: 16, fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Icon(Icons.star_purple500 , color: Color(0xFF6318AF), size: 16,),
                                        SizedBox(width: 5,),
                                        Text('Elegant Decorations & Table Settings', style: TextStyle( fontSize: 16, fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Icon(Icons.star_purple500 , color: Color(0xFF6318AF), size: 16,),
                                        SizedBox(width: 5,),
                                        Text('Served by Waitstaff', style: TextStyle( fontSize: 16, fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Icon(Icons.star_purple500 , color: Color(0xFF6318AF), size: 16,),
                                        SizedBox(width: 5,),
                                        Text('Best for Weddings, Corporate Events etc', style: TextStyle( fontSize: 16, fontWeight: FontWeight.w400),),
                                      ],
                                    ),
                                    SizedBox(height: 8,),
                                  ],
                                ),
                                Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 8,),
                                        Text('Know More',
                                        style: TextStyle(
                                          color: Color(0xFF6318AF),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        )
                                      ],
                                    )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
