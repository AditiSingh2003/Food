import 'package:flutter/material.dart';
import 'package:food/Auth/AuthScren.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoard extends StatefulWidget {
  const onBoard({super.key});

  @override
  State<onBoard> createState() => _onBoardState();
}

class _onBoardState extends State<onBoard> {
  final controller = PageController(
    initialPage: 0,
  );
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(bottom: 50),
        child: PageView(
          controller: controller,
          onPageChanged: (index) { 
            setState(() => isLastPage = index == 2);
            },
          children: [

            buildPage(text: 'Create Your Own Plate',
             image: 'assets/food.png',
              def: 'Create unforgettable memories with our unique feature to curate your favorite cuisines and food, tailored to your special occasion.'),

            buildPage(
              text: 'Exquisite Catering',
              image: 'assets/Healthy.png',
              def:'Experience culinary artistry like never before with our innovative and exquisite cuisine creations'
            ),

            buildPage(text: 'Personal Order Executive',
            image: 'assets/call.png',
            def: 'Embark on a personalized culinary journey with our dedicated one-to-one customer support, ensuring a seamless and satisfying experience every step of the way.')
            
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 150,
        child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Center(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Color(0xFF6318AF),
                    dotColor: Colors.grey,
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 5,
                  ),
                  onDotClicked: (index) => controller.animateToPage(
                    index,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  )
                ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    isLastPage ? TextButton(onPressed: (){}, child: TextButton(
                onPressed: () => Navigator.push(
                context,
                  MaterialPageRoute(
                    builder: (context) => AuthScreen(),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFFE8E0EA),
                      borderRadius: BorderRadius.circular(30),         
                    ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: Color(0xFF6318AF),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.arrow_circle_right,
                          color: Color(0xFF6318AF),
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ),) : 
                    Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xFFE8E0EA),
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_circle_right),
              color: Color(0xFF6318AF),
              iconSize: 42,
              onPressed: () => controller.nextPage(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              ),
              padding: EdgeInsets.all(10),
            ),
          ),
        ),
                  ],
                ),
                ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }

  Widget buildPage({required String text, required String image, required String def}) =>
      Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 100),),
              TextButton(
                onPressed: () => controller.jumpToPage(2),
                child: Container(
                  alignment: Alignment.centerRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFFE8E0EA),
                      borderRadius: BorderRadius.circular(5),         
                    ),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Color(0xFF6318AF),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Text(
                      def,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      )
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
