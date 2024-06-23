
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../../otpscreen/view/otp_screen.dart';
import '../viewmodel/login_provider.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
 // get verificationid => null;

// TextEditingController loginController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,

      body: Consumer<LoginProvider>(
        builder: (context,model,child) {

          return Container(
            margin: const EdgeInsets.only(left: 22,right: 22,),
          alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
               Image.network("https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg"),

                const SizedBox(
             height: 20,
              ),



                  Text("${model.name} ${model.Lastname} ",
                    style: const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            const SizedBox(
              height: 10,
            ),


            const Text(

              "Add your Phone Number ,we'll send you a varification code",
                style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,

            ),
                  const SizedBox(
                   height: 30,
                 ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,width: 50,
                      decoration:BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),


                      child: const Center(child: Text("+91",
                        style: TextStyle(fontSize: 20),
                      ),
                      ),
                    ),


                    const SizedBox(
                     width: 10,
                    ),

                    Container(
                      height: 50,width: 280,
                     decoration:BoxDecoration(
                       color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                       border: Border.all(color: Colors.black),

                     ),

                      child: TextField(
                        controller: model.phone,
                        keyboardType: TextInputType.number,
                        decoration:    const InputDecoration(

                        hintText: "   Enter Mobile No.",
                          suffixIcon: Icon(Icons.phone),

                        ),
                        style: const TextStyle(fontSize: 20),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                        ],
                      ),

                    ),


                    const SizedBox(
                      height: 80,
                    )
                  ],
                ),


                     SizedBox(
                      width: 280,
                      child:   ElevatedButton(onPressed: () async{
                        print(model.phone.text);
                        model.sendOtp(false, success: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                        }, failure: (){});
                        
                        },

                   style: ElevatedButton.styleFrom(backgroundColor: Colors.purple.shade600 ,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(12),
                       )),
                        child:  const Text("Send" ,
                   style: TextStyle(color: Colors.white,fontSize: 22),),

                 ),

               ),

              ],
            ),
            );
        }
      ),

      );

  }
}
