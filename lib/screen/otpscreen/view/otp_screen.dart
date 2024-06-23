
import 'dart:developer';

import 'package:firebase/screen/login_screen/viewmodel/login_provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../tab_screen/view/Tab_Screen.dart';
import '../viewModel/otp_provider.dart';


class OtpScreen extends StatefulWidget {

   const OtpScreen({super.key,});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('OTP SCREEN'),
      centerTitle: true,
      ),

      body: Consumer<LoginProvider>(

        builder: (context, model, child) {

          return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Container(
                             height: 50,width: 280,
                             decoration:BoxDecoration(
                               color: Colors.grey,
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(color: Colors.black),

                             ),
                           child: TextField(
                               controller: model.otpController,
                               keyboardType: TextInputType.phone,
                               decoration:  const InputDecoration(
                                 hintText: "  Enter OTP",
                                 border: InputBorder.none,
                               ),
                             ),
                           ),
                         ],
                       ),

                      const SizedBox(height: 30),

                      Center(
                        child: ElevatedButton(onPressed: () async {
                         try {
                           model.submitOtp(model.otpController.text, success: () {
                             print("code resent");
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> const TabScreen()));

                           }, failure: (message) {});
                         // PhoneAuthCredential credential=
                         //  await PhoneAuthProvider.credential(
                         //      verificationId: widget.dusriScreen,
                         //  smsCode: model.otpController.text.toString());
                         // FirebaseAuth.instance.signInWithCredential(credential).then((value){
                         //
                         // });
                          }
                         catch(ex) {
                           log(ex.toString());
                         }
                          },
                        child: const Text('OTP')),
                      ),
                       ]
          );

        }
      )
    );
  }
}
