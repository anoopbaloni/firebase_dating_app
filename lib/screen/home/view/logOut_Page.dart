

import 'package:flutter/material.dart';


class LogOutPage extends StatelessWidget {
  const LogOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LogOut Page"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.green,

      body:   Column(   mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 0),
            child: Text("Do You want to LogOut",
                        style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold)
                        ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(  mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left:60),
                child: Container(
                  height: 50,width:80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),

                  child: TextButton(
                    child: const Text("Yes",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                 onPressed: (){
                 print("You have successfully Logged out");
                 },
               ),


                ),

              ),

              const SizedBox(
                width:80
              ),
              Container(
                height: 50,width:80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey,
                  ),

                child: TextButton(
                  child: const Text("No",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                  onPressed: (){
                    print("You have not Logged out");
                  },
                ),
              )
            ]
          ),

        ],
      ),


    );
  }
}

