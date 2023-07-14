import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'otp.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  static String verify = "";

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController country_code = TextEditingController();
  var phone ='';

  @override
  void initState (){
    
    country_code.text = '+91';
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/log.png'),
            alignment: Alignment.topCenter,
            fit: BoxFit.contain,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                  child: Column(
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Image(
                    image: AssetImage('assets/Logo.png'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Craft My Plate',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Capriola',
                        color: Color(0xFFF7E5B7),
                        decoration: TextDecoration.none),
                  ),
                ],
              )),
              SizedBox(
                height: 180,
              ),

              //login
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login or Signup',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      onChanged: (value){
                        phone = value;
                      },
                      keyboardType: TextInputType.phone,
                      controller: _phoneNumberController,
                      decoration: InputDecoration(
                        hintText: 'Enter Phone Number',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixText: '+91 ',
                        prefixStyle: TextStyle(color: Colors.black),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 6),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF6318AF),
                      ),
                      child: TextButton(
                        onPressed: () async {
                          await FirebaseAuth.instance.verifyPhoneNumber(
                            phoneNumber: '${country_code.text+ (phone)}',
                            verificationCompleted: (PhoneAuthCredential credential) {},
                            verificationFailed: (FirebaseAuthException e) {},
                            codeSent: (String verificationId, int? resendToken) {
                              AuthScreen.verify = verificationId;
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => OTP(),
                                ),
                              );
                            },
                            codeAutoRetrievalTimeout: (String verificationId) {},
                          );
                        },
                          child: Text(
                            'Continue',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
              ),
              Container(
                child: Column(children: [
                  Text(
                    'By continuing, you agree to our',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Terms of Service  ',
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.underline),
                      ),
                      Text(
                        ' Privacy Policy',
                        style: TextStyle(
                            color: Colors.grey,
                            decoration: TextDecoration.underline),
                      ),
                    ],
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
