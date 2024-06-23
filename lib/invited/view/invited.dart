import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewModel/invitedProvider.dart';

class Invited extends StatefulWidget {
  const Invited({super.key});

  @override
  State<Invited> createState() => _InvitedState();
}

class _InvitedState extends State<Invited> {
  @override
  Widget build(BuildContext context) {
    return Consumer<InvitedProvider>(
      builder: (context,model,child) {
        return  Column(children: [

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
        ):Container(),],);
      }
    );
  }
}
