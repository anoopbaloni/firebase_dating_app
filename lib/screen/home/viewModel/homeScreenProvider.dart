import 'dart:convert';


import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;

import '../../../modal/datamodel.dart';


class HomeScreenProvider extends ChangeNotifier{

  String name = "Anoop Baloni!";
   int number = 50;
  List<DataModel> getDataFromApi =[];


  Future getData()async{

    try{
      var request = http.Request('GET', Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        var rowdata = await response.stream.bytesToString();
        List<dynamic> data = jsonDecode(rowdata);
        for (var element in data) {
          DataModel model= DataModel.fromJson(element);
          getDataFromApi.add(model);
        }
        notifyListeners();
print("getDataFromApi.length${getDataFromApi.length}");
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