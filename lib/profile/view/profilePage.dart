
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:testing_01/profile/view/EditProfilePage.dart';
//import 'package:testing_01/profile/viewModel/profilePageProvider.dart';

import '../viewModel/profilePageProvider.dart';
import 'EditProfilePage.dart';



class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {




  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      appBar: AppBar(
    centerTitle: true,
          title: const Text("Carousel Slide"),

       ),
      body:  Consumer<ProfilePageProvider>(
        builder: (context,model,child) {
    return SingleChildScrollView(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    SizedBox(
    height:400,
    width: MediaQuery.sizeOf(context).width,

    child: PageView.builder(
    itemCount: model.imageList.length,
    itemBuilder: (context,index){
    return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: SizedBox(

    width: MediaQuery.sizeOf(context).width,
    child: Image.network(
      model.imageList[index],
    fit: BoxFit.cover,

    ),
    ),
    );

    }
    )

    ),
    Padding(
    padding: const EdgeInsets.only(left: 12),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
    const SizedBox(height: 15,),
    const Text("Anoop Baloni",
    style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.brown)),
    const Text('DehraDun'),
    const Text('@Anoop',style:TextStyle(fontWeight: FontWeight.bold,),),
    const SizedBox(
    height: 20,
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    GestureDetector(
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) =>
    const EditProfilePage(),),);
    },
    child: Container(
    height: 40,width: 150,

    decoration: BoxDecoration(
    border: Border.all(color: Colors.deepOrange),
    borderRadius: BorderRadius.circular(12),
    color: Colors.white,
    ),

    child: const Center(child: Text('Edit Profile',
    style:TextStyle(color: Colors.deepOrange,
    fontWeight: FontWeight.bold)
    )),
    ),
    ),
    const SizedBox(
    width: 40,
    ),


    Container(
    height: 40,width: 150,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Colors.deepOrange,
    ),

    child:const Center(child: Text('My TagBuddies',style: TextStyle(color: Colors.white),)),
    )


    ],
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    const SizedBox(height: 20,),

    const Text('Top Interest', style:TextStyle(fontWeight: FontWeight.bold,
    fontSize: 30,color: Colors.brown)

    ),
    const SizedBox(
    width: 15,
    ),
    Container(
    height: 30,width: 30,
    decoration: const BoxDecoration(
    color: Colors.deepOrange,
    shape: BoxShape.circle,
    ),
    child: const Center(child: Text('?',
    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),
    )),
    )
    ],
    ),
    GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing: 20,),
    itemBuilder: (context,index) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
      borderRadius: BorderRadius.circular(10),

      child: Image.network(
        model.imageList[index],
      fit: BoxFit.cover,

      ),
      ),
    );
    },
    itemCount:model.imageList.length,

    ),
    const SizedBox(
    height: 20,
    ),
    const Divider(
    color: Colors.grey,
    thickness: 2,
    ),
    const SizedBox(
    height: 20,
    ),
    Row(
    children: [
    Container(
    height: 25,width: 25,
    decoration: BoxDecoration(
    border: Border.all(color: Colors.black),
    shape: BoxShape.circle,
    ),
    child: const Center(child: Text('?')
    ),
    ),
    const SizedBox(width: 10),
    const Text('Flake Score',
    style: TextStyle(fontSize: 20,
    color: Colors.lightBlueAccent,
    fontWeight: FontWeight.normal),
    ),
    const SizedBox(width: 10),
    Container(
    height: 25,width: 25,
    decoration: BoxDecoration(
    border: Border.all(color: Colors.black),
    shape: BoxShape.circle,
    ),
    child: const Center(child: Text('?')
    ),
    ),
    const SizedBox(height: 20),
    ],

    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const SizedBox(height: 30),
    Container(
    //  height: 40,width: 40,
    ),
    const Text('100%',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
    //const SizedBox(height: 1),
    const Text('Host Reliability',style:TextStyle(fontSize: 20,color:Colors.lightBlueAccent ),),
    const SizedBox(width: 30),


    ]
    ),
    //  const SizedBox(width: 50),
    Container(
    height: 145,width: 1,
    color: Colors.grey,
    ),
    Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    const SizedBox(height: 30),
    Container(
    //  height: 40,width: 40,
    ),
    const Text('100%',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
    // const SizedBox(width: 10),
    const Text('Tag Reliability',style:TextStyle(fontSize: 20,color:Colors.lightBlueAccent ),),
    const SizedBox(width: 30),


    ]
    ),
    const SizedBox(height: 20),
    ],
    ),

    const Divider(
    color: Colors.grey,
    thickness: 2,
    ),
    const SizedBox(height: 20),
    const Text('About Me',style:TextStyle(fontSize: 20,color: Colors.brown)),
    const SizedBox(height: 20),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    GestureDetector(
    onTap:(){
    model.setBasicAndPref(true);
    },
    child: Container(
    height: 50,width:180 ,
    decoration: BoxDecoration(
    border: Border.all(color: Colors.deepOrange),
    borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(12),topLeft: Radius.circular(12)),
    color: model.basic?Colors.deepOrange:Colors.white,

    ),
    child: const Center(child: Text('Basics',
        style:TextStyle(
            fontSize: 25))),
    ),
    ),
    GestureDetector(
    onTap: (){
    model. setBasicAndPref(false);
    },
    child: Container(
    height: 50,width: 180,
    decoration: BoxDecoration(
    border: Border.all(color: Colors.deepOrange),
    color: model.basic?Colors.white:Colors.deepOrange,
    borderRadius: const BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12))
    ),
    child: const Center(child: Text('Preferences',style:TextStyle(fontSize: 25))),
    ),
    ),


    ],
    ),
    const SizedBox(height: 20),
    //basics
    if( model.basic==true)
    const Column(children: [
    Row(
    children: [
    Icon(
    Icons.accessibility,
    ),
    SizedBox(width: 5),
    Text('Age: ', style:(TextStyle(fontSize: 18,fontWeight:FontWeight.w800,color: Colors.brown))),
    Text( '30', style:(TextStyle(fontSize: 22,fontWeight:FontWeight.w400,color: Colors.black))),
    SizedBox(height: 50),

    ],
    ),
    Divider(
    color: Colors.grey,
    thickness: 2,
    ),
    Row(
    children: [
    Icon(Icons.search),
    SizedBox(width: 5),
    Text('Gender: ', style:(TextStyle(fontSize: 18,fontWeight:FontWeight.w800,color: Colors.brown))),
    Text( 'Male', style:(TextStyle(fontSize: 22,fontWeight:FontWeight.w400,color: Colors.black))),
    SizedBox(height: 50),
    ],
    ),
    Divider(
    color: Colors.grey,
    thickness: 2,
    ),
    Row(
    children: [
    Icon(Icons.heart_broken),
    SizedBox(width: 5),
    Text('Status: ', style:(TextStyle(fontSize: 18,fontWeight:FontWeight.w800,color: Colors.brown))),
    Text( 'Single, Never Married', style:(TextStyle(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black))),
    SizedBox(height: 50),
    ],
    ),

    Divider(
    color: Colors.grey,
    thickness: 2,
    ),
    Row(
    children: [
    Icon(Icons.height),
    SizedBox(width: 5),
    Text('Height: ', style:(TextStyle(fontSize: 18,fontWeight:FontWeight.w800,color: Colors.brown))),
    Text( '5.9"', style:(TextStyle(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black))),
    SizedBox(height: 50),
    ],
    ),
    ],),
//preferences
    if( model.basic==false)
    const Column(children: [
    Row(
    children: [
    Icon(
    Icons.accessibility,
    ),
    SizedBox(width: 5),
    Text('Children: ', style:(TextStyle(fontSize: 18,fontWeight:FontWeight.w800,color: Colors.brown))),
    Text( 'Prefer Not to say', style:(TextStyle(fontSize: 22,fontWeight:FontWeight.w400,color: Colors.black))),
    SizedBox(height: 50),

    ],
    ),
    Divider(
    color: Colors.grey,
    thickness: 2,
    ),
    Row(
    children: [
    Icon(Icons.search),
    SizedBox(width: 5),
    Text('Dating: ', style:(TextStyle(fontSize: 18,fontWeight:FontWeight.w800,color: Colors.brown))),
    Text( 'Prefer Not to say', style:(TextStyle(fontSize: 22,fontWeight:FontWeight.w400,color: Colors.black))),
    SizedBox(height: 50),
    ],
    ),
    Divider(
    color: Colors.grey,
    thickness: 2,
    ),
    Row(
    children: [
    Icon(Icons.heart_broken),
    SizedBox(width: 5),
    Text('Drink: ', style:(TextStyle(fontSize: 18,fontWeight:FontWeight.w800,color: Colors.brown))),
    Text( 'Prefer Not to say', style:(TextStyle(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black))),
    SizedBox(height: 50),
    ],
    ),

    Divider(
    color: Colors.grey,
    thickness: 2,
    ),
    Row(
    children: [
    Icon(Icons.height),
    SizedBox(width: 5),
    Text('Smoke: ', style:(TextStyle(fontSize: 18,fontWeight:FontWeight.w800,color: Colors.brown))),
    Text( 'Prefer Not to say', style:(TextStyle(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black))),
    SizedBox(height: 50),
    ],
    ),
    Divider(
    color: Colors.grey,
    thickness: 2,
    ),
    Row(
    children: [
    Icon(Icons.height),
    SizedBox(width: 5),
    Text('Weed: ', style:(TextStyle(fontSize: 18,fontWeight:FontWeight.w800,color: Colors.brown))),
    Text( 'No', style:(TextStyle(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black))),
    SizedBox(height: 50),
    ],
    ),
    Divider(
    color: Colors.grey,
    thickness: 2,
    ),
    Row(
    children: [
    Icon(Icons.height),
    SizedBox(width: 5),
    Text('Drugs: ', style:(TextStyle(fontSize: 18,fontWeight:FontWeight.w800,color: Colors.brown))),
    Text( 'No', style:(TextStyle(fontSize: 20,fontWeight:FontWeight.w400,color: Colors.black))),
    SizedBox(height: 50),
    ],
    ),
    ],)
    ],

    ),
    ),

    ]
    ),
    );
    },
      )
    );
       }
       }
