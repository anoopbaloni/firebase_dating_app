import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewModel/commitedProvider.dart';

class Committed extends StatefulWidget {
  const Committed({super.key});

  @override
  State<Committed> createState() => _CommittedState();
}

class _CommittedState extends State<Committed> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommittedProvider>(
        builder: (context,model,child) {
          return Column(
              children: [

                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text("Committed Events",
                        style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.cyan),),
                    ),
                    Padding(
                        padding: EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.keyboard_arrow_up, size: 30,
                          color: Colors.black,
                        )
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                 itemCount: !model.showMore?4:model.hostList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 200,
                          width: 340,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),

                            color: Colors.black12,

                          ),

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                   Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 10),
                                    child: Text(model.hostList[index].eventName,
                                      style: const TextStyle(color: Colors.cyan,
                                          fontWeight: FontWeight.bold),),
                                  ),

                                  const Padding(
                                    padding: EdgeInsets.only(top: 10.0),
                                    child: Icon(
                                      Icons.calendar_month, size: 30,
                                      color: Colors.orangeAccent,
                                    ),
                                  ),

                                  Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right: 8, top: 10),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                                10),
                                            child: Image.network(
                                                model.hostList[index].image,
                                                width: 120, height: 120,
                                                fit: BoxFit.cover),
                                          ),
                                        )
                                      ]
                                  ),

                                ],
                              ),
                              const SizedBox(height: 4),
                               Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(model.hostList[index].address,
                                    style: const TextStyle(fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),

                              const SizedBox(height: 4),

                               Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(model.hostList[index].totalSpot,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.cyan)
                                      ),
                                    ),
                                  //  const SizedBox(width:5,height: 1),

                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0),
                                      child: Text(model.hostList[index].interest,
                                        style: const TextStyle(color: Colors.cyan,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18),
                                      ),
                                    ),
                                    const SizedBox(width: 40),
                                   const Padding(
                                      padding: EdgeInsets.only(right: 8.0),
                                      child: Text('View Event Info',
                                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange),),
                                    )

                                  ]
                              ),
                              const SizedBox(height: 10),

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
