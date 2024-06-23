import 'package:flutter/material.dart';

class NewScreenPage extends StatelessWidget {
  const NewScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
    preferredSize: const Size.fromHeight(80.0),
    // here the desired height
      child: AppBar(
      title: Center(
      child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-OV3G_m211Fysibqcp5x8Ehswnisj_3tenQ&s',
      fit: BoxFit.cover,),
       ),
      automaticallyImplyLeading: true,
    ),
    ),

      body:   SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.keyboard_arrow_left,
                  size: 40,color: Colors.black38),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Text('...',style: TextStyle(fontSize: 40,
                      color: Colors.orange,fontWeight: FontWeight.bold)),
                ),

              ],
            ),
            const SizedBox(height: 30),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network("https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg"),
              ],
            ),
            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('Fri, june 14 in the evening',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('Hisar,Haryana,India',
                  style:TextStyle(color: Colors.cyan)),
            ),
            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('Tool Kit',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            ),
            const SizedBox(height: 20),

            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('Abababa'),
            ),
            const SizedBox(height: 20),

            const Center(child: Text('Top Secret Event Details',style: TextStyle(fontSize: 18,
                fontWeight: FontWeight.bold),)),
            const SizedBox(height: 20),
           const Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               Padding(
                 padding: EdgeInsets.only(left: 8.0),
                 child: Text('Meeting Location:',
                   style: TextStyle(fontSize: 18,
                       fontWeight: FontWeight.bold),),
               ),
               Text(' Hisar , Haryana, India'),

             ],
           ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('Start Date:',
                    style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold),),
                ),
                Text(' Fri, june, 14, 2024 at 06:00 PM MST'),

              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('End date:',
                    style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold),),
                ),
                Text(' Fri, june, 14, 2024 at 09:00 PM MST'),

              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text('Event Details:',
                    style: TextStyle(fontSize: 18,
                        fontWeight: FontWeight.bold),),
                ),
                Text(' Test ab'),

              ],
            ),

            const SizedBox(height: 20),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 70,width:192,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.calendar_month,color: Colors.orange,),
                      SizedBox(width: 10),
                      Text('Add To Calendar',style: TextStyle(color: Colors.orange,
                          fontWeight: FontWeight.bold),),
                    ],
                  )
                ),
                Container(
                  height: 70,width:192,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(child: Icon(Icons.telegram,color: Colors.orange,)),
                        SizedBox(width: 10),
                        Text('Directions',style: TextStyle(color: Colors.orange,
                            fontWeight: FontWeight.bold),),
                      ],
                    )
                  )
                ]
                ),
            const SizedBox(height: 20),

            const ListTile(
             leading: Icon(Icons.messenger,color: Colors.orange),
             trailing:  Icon(Icons.keyboard_arrow_right,color: Colors.orange,size: 40),
             title: Text('Message Boards',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                 color: Colors.orange),
           ),
            ),
            const Divider(
              color: Colors.black,
            ),
            const ListTile(
              leading: Icon(Icons.chat_bubble,color: Colors.orange),
              trailing:  Icon(Icons.keyboard_arrow_right,color: Colors.orange,size: 40),
              title:  Text('Message Host',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                       color: Colors.orange),),
              ),
            const Divider(
              color: Colors.black,
            ),

             const ListTile(
              leading:  Icon(Icons.chat_bubble,color: Colors.orange),

                trailing:  Icon(Icons.keyboard_arrow_right,color: Colors.orange,size: 40),


              title:  Text('View Committed TagAlong',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,
                  color: Colors.orange),),
            ),
            const Divider(
              color: Colors.black,
            ),

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                      const Expanded(

                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                                       children: [
                         Icon(Icons.person,size: 30),
                        SizedBox(width: 8),
                        Text('Artist',style: TextStyle(fontSize: 20),),
                                       ],
                       ),
                       SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: [
                             Icon(Icons.ac_unit,size: 30),
                             SizedBox(width: 8),
                             Text('No Cost',style: TextStyle(fontSize: 20)),
                           ]
                       ),
                       SizedBox(height: 20),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                            Icon(Icons.donut_small_outlined),
                           SizedBox(width: 8),
                            Text('Small Group',style: TextStyle(fontSize: 20)),
                         ],
                    ),
                       SizedBox(height: 30),
                       Text('1 Interested',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                       SizedBox(height: 8),
                       Text('0 out of 3 spots',style: TextStyle(fontSize: 15,color: Colors.cyan)),
                     ]),
                                   ),
                    const SizedBox(width: 40),

                    Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network("https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg",
                      height: 150,width: 150,
                          fit: BoxFit.cover,
                      ),
                      ),
                      const SizedBox(height: 8),
                          const Text('2023 2. 24',style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 8),
                      const Text('No mutual TagBuddies'),
                    ],
                      ),
                        ]),
                 ),
           const SizedBox(height: 20),
              ]),

        )
    );
  }
}
