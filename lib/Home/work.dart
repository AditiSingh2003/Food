import 'package:flutter/material.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Text('How Does It Work?',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.w400),),
          SizedBox(height: 25,),
          Right(
            img: 'assets/menu.png',
            heading: 'Customize Menu',
            text: 'Select items for a single event or multiple events',
          ),
          SizedBox(height: 20,),
          Left(
            img: 'assets/choose.png',
            heading: 'Choose Services',
            text: 'Select the type of services from varying cutlery, mode of serving options, & more'
          ),
          SizedBox(height: 20,),
          Right(
            img:'assets/Dyn_Pricing.png',
            heading: 'Dynamic Pricing',
            text: 'Price per plate varies with no. of items in a plate and no. of plates selected'
          ),
          SizedBox(height: 20,),
          Left(
            img: 'assets/track.png',
            heading: 'Track Your Order',
            text: 'Track the order status and seek help from the executives anytime',
          ),
          SizedBox(height: 20,),
          Right(
            img: 'assets/taste.png',
            heading: 'Taste Your Samples',
            text:'Explode your taste bud with samples of what you order(on request for eligible orders)'
          ),
          SizedBox(height: 20,),
          Left(
            img: 'assets/Enjoy_food.png',
            heading: 'Enjoy Food and Services',
            text: 'Enjoy event with delicious and customized food  '
          ),
          SizedBox(height: 30,),

          Text('Delicious food with professional service !',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w400
          ),
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }

  Widget Right({img, text, heading}) => 
  Container(
    child:Row(
      children: [
        Image(image: AssetImage(img),),
        SizedBox(width: 10,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(heading,
                style: TextStyle(fontSize: 24, color: Color(0xFF6318AF)),),
                Text(text,
                )
              ],
            ),
          ),
        ),
    ],)
  );

  Widget Left({img, text, heading}) => 
  Container(
    child:Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(heading,
                style: TextStyle(fontSize: 24, color: Color(0xFF6318AF)),),
                Text(text,
                )
              ],
            ),
          ),
        ),
        SizedBox(width: 10,),
        Image(image: AssetImage(img),),
    ],)
  );


}