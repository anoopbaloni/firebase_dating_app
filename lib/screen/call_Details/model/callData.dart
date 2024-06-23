


import 'dart:convert';


import 'package:http/http.dart'as http;

import 'callDeatilModel.dart';

class CallData{

  Future<List<CallData>> getData()async{
    List<CallData> CallingDataFromApi =[];
    try{
      var request = http.Request('GET', Uri.parse('https://api.slingacademy.com/v1/sample-data/photos'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
       var callingHistory = await response.stream.bytesToString();
       List<dynamic> data = jsonDecode(callingHistory);
       for (var element in data) {
         CallDetailModal model= CallDetailModal.fromJson(element);
         CallingDataFromApi.add(model as CallData);
       }
       return CallingDataFromApi;
      }
      else {
        print(response.reasonPhrase);
        return [];
      }

    }
    catch(e){
      print("Exception in data $e");
      throw e;
    }
  }
}

