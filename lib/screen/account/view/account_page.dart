import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../profile/view/profilePage.dart';
import '../viewModel/homeIconProvider.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Consumer<HomeIconProvider>(
        builder: (context,model,child) {
         return  Center(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text("data"),
               const Text("data"),
               const Text("data"),
               const Text("data"),
               const Text("data"),
               const Text("data"),
               const Text("data"),
               const Text("data"),
               const Text("data"),
             const SizedBox(height:40),


               GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) =>
                   const ProfilePage(),),);

                 },
               // child: Text(model.IconData),

                 child: Container(
                   height: 50,
                   width: 200,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(19.0),
                     color: Colors.grey,
                   ),

                   child: const Center(
                     child: Text(" Next ",style: TextStyle(fontSize:30,
                         fontWeight:FontWeight.bold),),
                   ),
                 ),
                 ),


               const SizedBox(
                 height: 250,
               ),

             ],
           ),
         );
        }
      )
    );
  }
}
