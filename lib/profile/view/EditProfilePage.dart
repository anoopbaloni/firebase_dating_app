

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewModel/edit_profile_provider.dart';
import 'newScreenPage.dart';
//import 'package:testing_01/profile/view/newScreenPage.dart';
//import 'package:testing_01/profile/viewModel/edit_profile_provider.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});



  @override
  State<EditProfilePage> createState() =>_EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {



  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:    PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        // here the desired height
       child: AppBar(
        title: Center(
          child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-OV3G_m211Fysibqcp5x8Ehswnisj_3tenQ&s',
            fit: BoxFit.cover,),
        ),
         automaticallyImplyLeading: false,
    ),
    ),

         body:   Consumer<EditProfileProvider>(
        builder: (context,model,child) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 8.0),
                     child: FloatingActionButton(
                       backgroundColor: Colors.white,
                         elevation: 0,
                         child: const Icon(Icons.keyboard_arrow_left,size: 40,),
                         onPressed: (){
                     Navigator.pop(context); }
                     ),
                   ),

                   TextButton(onPressed: (){
                     Navigator.pop(context);
                     // Navigator.push(context, MaterialPageRoute(builder: (context) =>
                     // const SaveClickPage(),),);
                   },
                     child: const Padding(
                       padding: EdgeInsets.only(right: 20.0),
                       child: Text('Save',style: TextStyle(fontSize: 18,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                     ),
                   ),
                 ],
               ),

                const SizedBox(height: 10),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:15),
                      child: Text('My Photos And Videos',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                  ],
            ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 // crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: SizedBox(
                        height: 100,width: 100,

                        child: Image.network('https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_1280.jpg',
                            fit:BoxFit.cover,

                        ),

                                ),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: SizedBox(
                          height: 100,width: 100,
                        child: Image.network('https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
                          fit:BoxFit.cover,
                      ),
                    ),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: SizedBox(
                        height: 100,width: 100,
                        child: Image.network('https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg',
                          fit:BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: SizedBox(
                        height: 100,width: 100,
                        child: Image.network('https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
                          fit:BoxFit.cover,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: SizedBox(
                        height: 100,width: 100,
                        child: Image.network('https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
                          fit:BoxFit.cover,
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: SizedBox(
                        height: 100,width: 100,
                        child: Image.network('https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
                          fit:BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                ),
                const SizedBox(height: 40,),
                const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left:15),
                      child: Text('My Interest',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    )
                  ],

                  ),

                //GridView

                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                    itemBuilder: (context,index){
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
                  itemCount: 10,
                ),
                const SizedBox(height: 20),
               const Divider(
                  color: Colors.grey,
                 thickness: 2,
               ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Edit My Interests',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
                const SizedBox(height: 3),
                const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text('About Me',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 20),
                  const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text('In my past time',style: TextStyle(color: Colors.grey,fontSize: 15,),),
                    ),
                  ],
                  ),
                    const SizedBox(height: 10,),

                    //Container with TextField ...
                    Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                            height: 160,width:365,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all( 10),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '  Type Something Here...',
                                  hintStyle: TextStyle(fontSize: 15),
                                  border: InputBorder.none,
                                ),
                              maxLength: 180,
                                maxLines: 6,style: TextStyle(fontSize: 22),
                              ),
                            ),

                          ),
                          ),
                          ],
                         ),
                            const SizedBox(height: 8),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.refresh,color: Colors.deepOrange,),
                    SizedBox(width: 2),

                    Text('New Prompt',
                      style: TextStyle(color: Colors.deepOrange,
                          fontSize: 15)),

                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('My Basic Info',
                    style: TextStyle(fontSize: 15,
                        fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 20),

                            const Padding(
                              padding: EdgeInsets.only(left: 12),
                             child: Text('Height',style: TextStyle(fontSize: 15,
                                 color: Colors.grey),),
                                                     ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(

                      height: 60,width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: model.heightItem,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconSize: 38,
                        elevation: 16,
                        underline: Container(),
                        onChanged: (newValue){
                           model.setHeightItem(newValue);
                        },
                        items: model.heightData.map((e) {
                          return DropdownMenuItem(
                            value: e,
                            child:  Padding(
                              padding: const EdgeInsets.only(left:12),
                              child: Text (e),
                            ),
                          );
                        }).toList(),
                      ),

                    ),


                ),
               const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('Gender',style: TextStyle(fontSize: 15,
                      color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 60,width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: model.genderItem,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      iconSize: 38,
                      elevation: 16,
                      underline: Container(),
                      onChanged: (newValue){
                        model.setGenderItem(newValue);
                      },
                      items: model.genderData.map((e) {
                        return DropdownMenuItem(
                          value: e,
                          child:  Padding(
                            padding: const EdgeInsets.only(left:12),
                            child: Text (e),
                          ),
                        );
                      }).toList(),
                    ),

                  ),





                ),

                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('Age',style: TextStyle(fontSize: 15,
                      color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 60,width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: DropdownButton<int>(
                      isExpanded: true,
                      value: model.ageItem,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      iconSize: 38,
                      elevation: 16,
                      underline: Container(),
                      onChanged: (int? newValue){
                        model.setAgeItem(newValue);
                      },
                      items: model.ageData.map((e) {
                        return DropdownMenuItem(
                          value: e,
                          child:  Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text (e.toString()),
                          ),
                        );
                      }).toList(),
                    ),

                  ),





                ),

                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('RelationShip Status',style: TextStyle(fontSize: 15,
                      color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 60,width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: model.relationShipItem,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      iconSize: 38,
                      elevation: 16,
                      underline: Container(),
                      onChanged: (newValue){
                        model.setRelationShipItem(newValue);
                      },
                      items: model.relationShipData.map((e) {
                        return DropdownMenuItem(
                          value: e,
                          child:  Padding(
                            padding: const EdgeInsets.only(left: 12),
                            child: Text (e),
                          ),
                        );
                      }).toList(),
                    ),

                  ),





                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('School',style: TextStyle(fontSize: 15,
                      color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 60,width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text('Inter College',
                        style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('Work',style: TextStyle(fontSize: 15,
                      color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 60,width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Text('Software Developer',
                          style: TextStyle(fontSize: 15,
                              fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),

                const SizedBox(height: 20),

                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('HomeTown',style: TextStyle(fontSize: 15,
                      color: Colors.grey),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 60,width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Text('Dehradun',
                        style: TextStyle(fontSize: 15,
                            fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text('My Dating Preferences',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text('I am a',style: TextStyle(fontSize: 18, color: Colors.grey),),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(

                    height: 60,width: 360,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey,

                    ),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: model.genderItem,
                      icon: const Icon(Icons.keyboard_arrow_down),
                      iconSize: 38,
                      elevation: 16,
                      underline: Container(),
                      onChanged: (newValue){
                        model.setGenderItem(newValue);
                      },
                      items: model.genderData.map((e) {
                        return DropdownMenuItem(
                          value: e,
                          child:  Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text (e),
                          ),
                        );
                      }).toList(),
                    ),

                  ),

                ),

                const SizedBox(height: 20),

                Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                      const NewScreenPage(),),);
                    },
                    child: Container(
                      height: 50,width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.brown,
                      ),
                      child: const Center(
                          child: Text('Submit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))

                    ),
                  ),
                ),
                const SizedBox(height: 20),


              ]));
        }
      ));
                            }
                              }
