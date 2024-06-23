import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  String? verificationId = '';
  TextEditingController phone = TextEditingController();
  TextEditingController otpController = TextEditingController();
  var number = " ";
  String registration = "Registrations";
  String name = "Anoop";
  String Lastname = "Baloni ";


  int maxOtpTimeOutInSec = 60;

  Future sendOtp(bool isResend,
      {required Function success, required Function failure}) async {
    print("phone verification------------------");


    await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: "+91${phone.text.toString()}",
        timeout: Duration(seconds: maxOtpTimeOutInSec),
        verificationCompleted: _onVerificationCompleted,
        verificationFailed: (FirebaseAuthException e) {
          return failure(e.message);
        },
        codeSent: (String verificationId, int? resendToken) {
          this.verificationId = verificationId;

          print("Otp Sent $verificationId");
          return success();
        },
        codeAutoRetrievalTimeout: _onCodeTimeout);
  }


  _onVerificationCompleted(PhoneAuthCredential authCredential) async {
    print("verification completed------------------");

    print("verification completed ${authCredential.smsCode}");
    User? user = FirebaseAuth.instance.currentUser;

    if (authCredential.smsCode != null) {
      try {
        await user!.linkWithCredential(authCredential);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'provider-already-linked') {
          await _firebaseAuth.signInWithCredential(authCredential);
        }
      }
    }
  }


  _onCodeTimeout(String timeout) {
    return null;
  }


  submitOtp(String otp,
      {required Function success, required Function failure}) async {
    PhoneAuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: verificationId!, smsCode: otp);

    final User? user =
        (await _firebaseAuth.signInWithCredential(phoneAuthCredential)).user;
    return success();
  }

}

