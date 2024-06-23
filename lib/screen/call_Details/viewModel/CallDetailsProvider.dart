import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart'as http;

import '../model/callDeatilModel.dart';
class CallDetailsProvider extends ChangeNotifier{

  var logs = 'Showing Call History';
  List<Photo> CallingDataFromApi =[];
  Future getData()async{

    try{

      var responses = await http.get(
        Uri.parse('https://api.slingacademy.com/v1/sample-data/photos'),

      );
    //  http.StreamedResponse response = await request.send();
print("CHECK${responses.body}");
      if (responses.statusCode == 200) {
        //var callingHistory = await response.stream.bytesToString();
        Map json = jsonDecode(responses.body);
        //for (var element in json) {
        var response  = CallDetailModal.fromJson(json);
          CallingDataFromApi.addAll(response.photos);
       // }
        print("CallingDataFromApi.length${CallingDataFromApi.length}");
       notifyListeners();
      }
      else {
        // print(response.reasonPhrase);
        return [];
      }

    }
    catch(e){
      print("Exception in data $e");
      throw e;
    }
  }
}