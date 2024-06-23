import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../profile/view/profilePage.dart';
import '../viewModel/homeScreenProvider.dart';
import 'logOut_Page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    Provider.of<HomeScreenProvider>(context,listen:false).getData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


   return  Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("HOME PAGE"),

      ),

      drawer:  Drawer(
        child: Column(
          children: [

            Container(
              color: Colors.blue,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 100,
                    width: 180,
                    decoration:  const BoxDecoration(
                      shape: BoxShape.circle,
                        image: DecorationImage(
                            image:NetworkImage("https://images.pexels.com/photos/869517/pexels-photo-869517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2")
                        )
                    ),
                  ),
                  const Text("Anoop Baloni",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                ],

              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push
                (context, MaterialPageRoute
                (builder:(context)=>const ProfilePage()));
              },
              child: const ListTile(
                title: Text("Profile",
                  style: TextStyle(fontSize: 17,
                      fontWeight: FontWeight.bold)
                ),
                  leading: Icon(Icons.home),
                   trailing: Icon( Icons.star),

              ),
            ),
            const ListTile(
              title: Text("setting",
                  style: TextStyle(fontSize: 17,
                      fontWeight: FontWeight.bold)
              ),
              leading: Icon(Icons.settings),
              trailing: Icon( Icons.settings),

            ),
             ListTile(
              title: const Text("logout",
                  style: TextStyle(fontSize: 17,
                      fontWeight: FontWeight.bold),

              ),
              leading: const Icon(Icons.logout),
              trailing: const Icon( Icons.logout),

             onTap: (){
              Navigator.push
                (context, MaterialPageRoute
                (builder:(context)=>const LogOutPage())
              );
             },

            ),
          ],


        ),


      ),

      backgroundColor: Colors.green,
      body: Consumer<HomeScreenProvider>(
        builder: (context,model,child) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                ListView.builder(
                  itemCount: model.getDataFromApi.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                 //reverse: false,
                  itemBuilder: (BuildContext context, int index) {
                    print("index$index");
                    return    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(model.getDataFromApi[index].title,
                          textAlign: TextAlign.start,
                          maxLines: 10,
                          style: const TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.white),),
            
                      ],
                    );},
            
                ),
              ],
            ),
          );
        }
      )


    );


  }
}
