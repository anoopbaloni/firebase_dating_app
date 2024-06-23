import 'package:flutter/cupertino.dart';

import '../model/invitedModel.dart';

class InvitedProvider extends ChangeNotifier{

  bool showMore=false;

  setShowMore(value){
    showMore=value;
    notifyListeners();
  }


  final List<InvitedModel> hostList = [
    InvitedModel(eventName: "Event1",address: "Dehradun",
        dateTime: "Tuesday",
        interest: "9",
        totalSpot: "4",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),

    InvitedModel(eventName: "Event2",address: "Mussoorie",
        dateTime: "Monday",
        interest: "1",
        totalSpot: "2",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),

    InvitedModel(eventName: "Event3",address: "Thatyur",
        dateTime: "Sun,Jun 7 2024,in the morning",
        interest: "10",
        totalSpot: "2",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
    InvitedModel(eventName: "Event4",address: "Nainbagh",
        dateTime: "Wednesday",
        interest: "3",
        totalSpot: "1",image:    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg'),
    InvitedModel(eventName: "Event5",address: "Thatyur",
        dateTime: "Sunday",
        interest: "4",
        totalSpot: "5",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
    InvitedModel(eventName: "Event6",address: "Raipur",
        dateTime: "Thursday",
        interest: "5",
        totalSpot: "3",image:'https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_1280.jpg'),
    InvitedModel(eventName: "Event7",address: "Delhi",
        dateTime: "Saturday",
        interest: "12",
        totalSpot: "7",image:'https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_1280.jpg'),
    InvitedModel(eventName: "Event8",address: "Banasari",
        dateTime: "Monday",
        interest: "5",
        totalSpot: "1",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
    InvitedModel(eventName: "Event8",address: "Banasari",
        dateTime: "Monday",
        interest: "5",
        totalSpot: "1",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
  ];

  int index = 0;

}

