
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../profile/view/profilePage.dart';
import '../viewModel/CallDetailsProvider.dart';


class CallLogs extends StatefulWidget {
  const CallLogs({super.key});


  @override
  State<CallLogs> createState() => _CallDetailsState();
}

class _CallDetailsState extends State<CallLogs> {
  @override
  void initState() {
    Provider.of<CallDetailsProvider>(context,listen: false).getData();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //  backgroundColor: Colors.blue,

          body: Consumer<CallDetailsProvider>(
              builder: (context,model,child) {

               return Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 Expanded(
                   child: ListView.builder(
                     shrinkWrap: true,
                       itemCount: model.CallingDataFromApi.length,
                       itemBuilder: (BuildContext context, int index){
                     return Padding(
                       padding: const EdgeInsets.all(15),
                       child: Column (

                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [

                           GestureDetector(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) =>
                               const ProfilePage(),),);

                             },
                             child: Container(

                                 decoration:  const BoxDecoration(
                             color: Colors.blue,

                               borderRadius: BorderRadius.all(Radius.circular(16)),
                               boxShadow: [BoxShadow(
                                 color: Colors.grey,
                                 blurRadius: 20,
                               ),
                               ]),
                                 child:  Padding(
                                   padding: const EdgeInsets.only(top: 10,left: 10),
                                   child: Column(
                                     children: [
                                       Row(

                                         crossAxisAlignment: CrossAxisAlignment.start,
                                         children: [
                                           ClipRRect(
                                             borderRadius:const BorderRadius.all(Radius.circular(12)),
                                             child:Image.network(model.CallingDataFromApi[index].url,
                                               width: 100,height: 110,fit: BoxFit.fill),

                                           ),
                                        const SizedBox(width: 15,),

                                        Expanded(
                                          child: Column(
                                           mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text(
                                              maxLines: 2, textAlign: TextAlign.start,
                                              model.CallingDataFromApi[index].title,
                                              style: const TextStyle(fontSize: 15),
                                              overflow: TextOverflow.ellipsis,),

                                            Text(textAlign: TextAlign.start,
                                              model.CallingDataFromApi[index].description,
                                              style: const TextStyle(fontSize: 15),
                                              overflow: TextOverflow.ellipsis,  maxLines: 2,),


                                          ],

                                          ),
                                        ),
                                         ],
                                       ),
                                       const SizedBox(height: 30,)
                                     ],
                                   ),
                                 )
                                  ),
                           ),

                              ],
                              ),
                     );
                             }
                             ),
                 )
                     ],
                   );
            }
          )
    );
  }
}

