import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:quickalert/quickalert.dart';
import 'package:flutter/material.dart';
import 'package:food/Auth/AuthScren.dart';
import 'package:food/Auth/detail.dart';
import 'package:pinput/pinput.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {

  final FirebaseAuth auth = FirebaseAuth.instance;
  var code = '';
  
  void showError(){
    QuickAlert.show(context: context,
    title: 'Error',
    text: 'OTP Don\'t Match',
    type: QuickAlertType.warning,
    );
  }

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
                SizedBox(
                  width: 80,
                ),
                Text(
                  'OTP Verification',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lexend',
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Text('We have sent a verification code to',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Lexend',
                    color: Colors.black,
                    decoration: TextDecoration.none),
                    ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('your mobile number',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Lexend',
                        color: Colors.black,
                        decoration: TextDecoration.none),
                        ),
                SizedBox(
                  width: 10,
                ),
                Icon( Icons.verified_sharp , color: Colors.green, ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Pinput(
              onChanged: (value){
                setState(() {
                  code = value;
                });
              },
              length: 6,
              showCursor: true,
              defaultPinTheme: PinTheme(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 50,
              child: ElevatedButton(
                onPressed: ()async{
                  try{
                    PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: AuthScreen.verify, smsCode: code);
                  // Sign the user in (or link) with the credential
                  await auth.signInWithCredential(credential);
                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Detail(),
                                      ),
                                    );
                  }
                  catch(e){
                    showError();
                  }
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Lexend',
                      color: Colors.white,
                      decoration: TextDecoration.none),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF6318AF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Didn\'t receive the code?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Lexend',
                        color: Colors.black,
                        decoration: TextDecoration.none),
                        ),
                        Text('Resend Again', style: TextStyle(color: Color(0xFF6318AF)))
              ],
            ),
          ],
        )),
      ),
    );
  }
}
