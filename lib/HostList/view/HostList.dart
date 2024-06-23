

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../commited/view/commited.dart';
import '../../invited/view/invited.dart';
import '../viewModel/hostListProvider.dart';



class HostList extends StatefulWidget {
  const HostList({super.key});

  @override
  State<HostList> createState() => _HostListState();
}

class _HostListState extends State<HostList> {
  @override
  void initState() {
    Provider.of<HostListProvider>(context,listen: false).init();
    // TODO: implement initState
    super.initState();
  }
//  get child => null;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  PreferredSize(
        preferredSize: const Size.fromHeight(100.0),

        child:  AppBar(
         title: const Text("Save Page",
           style: TextStyle(fontSize: 20,
               fontWeight: FontWeight.bold,
               color: Colors.orange),),
          centerTitle: true,
          automaticallyImplyLeading: true,

        ),

      ),
      drawer: const Drawer(

      ),


      body:Consumer<HostListProvider>(
        builder: (context,model,child) {
          return SingleChildScrollView(
           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

             const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text('Manage Events',
              style: TextStyle(fontSize: 20,
              fontWeight: FontWeight.bold)
              ),
              ),
             const SizedBox(height: 20),
                  Row(
              mainAxisAlignment: MainAxisAlignment.start,
             children: [
                  GestureDetector(
                    onTap: (){
                      model.setHosting(true);
                      model.setInvited(false);
                      model.setCommitted(false);
                      model.setHostingColor(true);
                    },
                    child: Container(
                                 margin: const EdgeInsets.only(left: 10),
                                 height: 80,width: 120,
                                decoration: BoxDecoration(
                                border: Border.all(color: Colors.deepOrange),
                                  color: model.hosting==true?Colors.deepOrange:Colors.white,
                                borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(12),
                                topLeft: Radius.circular(12)),
                                 ),
                    child:  const Center(
                      child: Text('Hosting',
                          style:TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,

                           )),
                    )
                                ),
                  ),

                   GestureDetector(
                     onTap: (){
                       model.setHosting(false);
                       model.setInvited(true);
                       model.setCommitted(false);
                       model.setHostingColor(false);
                     },
                     child: Container(
                                   height: 80,width: 120,
                                   decoration: BoxDecoration(
                                   border: Border.all(color: Colors.deepOrange),
                                     color: model.invited==false?Colors.white:Colors.deepOrange,
                                   ),
                     child:  const Center(
                       child: Text('Invited',
                     style:TextStyle(fontSize: 20,
                     fontWeight: FontWeight.bold,
                      color: Colors.black

                      ),
                     ),
                     )),
                   ),

                   GestureDetector(
                     onTap: (){
                       model.setHosting(false);
                       model.setInvited(false);
                       model.setCommitted(true);

                     },
                     child: Container(
                                   height: 80,width: 120,
                                   decoration: BoxDecoration(
                                   border: Border.all(color: Colors.deepOrange),
                                     color: model.committed==false?Colors.white:Colors.deepOrange,
                                     borderRadius: const BorderRadius.only(bottomRight:Radius.circular(12),
                                   topRight: Radius.circular(12)),
                                   ),
                     child:  const Center(
                     child: Text('Committed',
                     style:TextStyle(fontSize: 20,
                     fontWeight: FontWeight.bold,
                     color: Colors.black))
                        ),
                     ),
                   ),
              ],
              ),
              const SizedBox(height: 20),
             if(model.hosting)
              Column(children: [ const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Text("Events You're Hosting",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:Colors.cyan),),
                  ),
                  Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.keyboard_arrow_up,size: 30,
                        color: Colors.black,
                      )
                  ),
                ],
              ),
                const SizedBox(height: 20),

                if(model.hosting==true)
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: !model.showMore?4:model.hostList.length,
                      itemBuilder: ( context,   index)
                      {

                        return   Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 325,
                            width: 340,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                              color: Colors. black12,

                            ),

                            child:   Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0,top: 10),
                                      child: Text(model.hostList[index].dateTime,

                                        style: const TextStyle(color:Colors.cyan,
                                            fontWeight: FontWeight.bold ),),
                                    ),

                                    const Padding(
                                      padding: EdgeInsets.only(top: 10.0),
                                      child: Icon(
                                        Icons.calendar_month,size: 30,
                                        color: Colors.orangeAccent,
                                      ),
                                    ),

                                    Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Padding(
                                            padding: const EdgeInsets.only(right: 10.0,top: 10),
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: Image.network(model.hostList[index].image,
                                                  width: 120,height: 120,
                                                  fit:BoxFit.cover),
                                            ),
                                          )
                                        ]
                                    ),

                                  ],
                                ),
                                const  SizedBox(height: 4),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(model.hostList[index].eventName,
                                      style: const TextStyle(fontSize: 18,
                                          fontWeight: FontWeight.bold)),
                                ),

                                const SizedBox(height: 4),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(model.hostList[index].totalSpot,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.0,)
                                  ),
                                ),
                                const SizedBox(height: 4.0),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Text(model.hostList[index].address,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color:Colors.cyan)
                                        ),
                                      ),

                                      const Padding(
                                        padding: EdgeInsets.only(right: 8.0),
                                        child: Text('   Edit Event ',

                                          style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 18),
                                        ),
                                      ),
                                    ]
                                ),
                                const SizedBox(height: 8),
                                const Text('   Manage TagAlong',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0,color: Colors.deepOrange)),
                                const SizedBox(height: 15),
                                const Divider(
                                  height: 5,
                                  thickness: 2,
                                ),
                                const SizedBox(height: 3),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Container(
                                    height: 60,width: 60,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.orange
                                    ),
                                    child: const Icon(
                                      Icons.message,color: Colors.white70,size: 45,
                                    ),
                                  ),

                                ),


                              ],
                            ),
                          ),



                        );

                      }),
                const SizedBox(height: 10),
                !model.showMore?
                TextButton(
                  onPressed: (){
                    model.setShowMore(true);
                  } ,
                  child:  Center(
                    child: Container(
                      height: 50,width: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey
                      ),

                      child: const Center(
                        child: Text('Show More',
                            style:TextStyle(fontSize:25,fontWeight:FontWeight.bold,)
                        ),
                      ),
                    ),
                  ),
                ):Container(),],),


              if(model.invited==true)
               const Invited(),

              if(model.committed==true)
                const Committed(),

          ]
              ),
          );
        }
      ),
    );
  }
}




