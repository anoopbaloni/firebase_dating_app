import 'package:firebase/profile/viewModel/edit_profile_provider.dart';
import 'package:firebase/profile/viewModel/profilePageProvider.dart';
import 'package:firebase/screen/account/viewModel/homeIconProvider.dart';
import 'package:firebase/screen/call_Details/viewModel/CallDetailsProvider.dart';
import 'package:firebase/screen/home/viewModel/homeScreenProvider.dart';
import 'package:firebase/screen/login_screen/view/loginPage.dart';
import 'package:firebase/screen/login_screen/viewmodel/login_provider.dart';
import 'package:firebase/screen/otpscreen/view/otp_screen.dart';
import 'package:firebase/screen/otpscreen/viewModel/otp_provider.dart';
import 'package:firebase/screen/tab_screen/view/Tab_Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'HostList/viewModel/hostListProvider.dart';
import 'commited/viewModel/commitedProvider.dart';
import 'invited/viewModel/invitedProvider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp( options: const FirebaseOptions(

    appId: '1:468361342400:android:219a80291e05af630aac25',

    projectId: 'anoopproject-340e0',
    storageBucket: '', apiKey: 'AIzaSyChsAYICHOkydX82Sul0gni5n5iUVBGSMM', messagingSenderId: '468361342400',   ));

  runApp (

      MultiProvider(
        providers: [
          ChangeNotifierProvider<LoginProvider>( create: (context) => LoginProvider()),
          ChangeNotifierProvider<OtpProvider>( create: (context) => OtpProvider()),
          ChangeNotifierProvider<HomeScreenProvider>( create: (context) =>HomeScreenProvider()),
          ChangeNotifierProvider<HomeIconProvider>( create: (context) => HomeIconProvider()),
          ChangeNotifierProvider<CallDetailsProvider>( create: (context) => CallDetailsProvider()),
          ChangeNotifierProvider<EditProfileProvider>( create: (context) => EditProfileProvider()),
          ChangeNotifierProvider<ProfilePageProvider>( create: (context) => ProfilePageProvider()),
          ChangeNotifierProvider<HostListProvider>( create: (context) => HostListProvider()),
          ChangeNotifierProvider<InvitedProvider>( create: (context) => InvitedProvider()),
          ChangeNotifierProvider<CommittedProvider>( create: (context) => CommittedProvider()),
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false ,
          //  initialRoute: "TabScreen",
          home: const LoginPage(),
          routes: {
            'loginPage': (context) =>  const LoginPage(),
            'TabScreen': (context) => const TabScreen(),
            'otp' : (context) =>  OtpScreen(),
          },
        ),
      )
  );
}





