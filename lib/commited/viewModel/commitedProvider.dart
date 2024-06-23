import 'package:flutter/cupertino.dart';

import '../model/commitedModel.dart';

class CommittedProvider extends ChangeNotifier{


  bool basic=true;
  bool showMore=false;
  bool committed= true;

  setCommitted(value){
    committed=value;
    notifyListeners();
  }
  setShowMore(value){
    showMore=value;
    notifyListeners();
  }

  final List<CommitedModel> hostList = [
    CommitedModel(eventName: "Event1",address: "Dehradun",
        dateTime: "Tuesday",
        interest: "9 interested",
        totalSpot: "only 2 spot open ",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
    CommitedModel(eventName: "Event2",address: "Mussoorie",
        dateTime: "Monday",
        interest: "1 interested",
        totalSpot: "full",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
    CommitedModel(eventName: "Event3",address: "Thatyur",
        dateTime: "Sun,Jun 7 2024,in the morning",
        interest: "10 interested",
        totalSpot: "1 of 2 spots open",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
    CommitedModel(eventName: "Event4",address: "Nainbagh",
        dateTime: "Wednesday",
        interest: "3 interested",
        totalSpot: " 2 spots open",image:    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg'),
    CommitedModel(eventName: "Event5",address: "Thatyur",
        dateTime: "Sunday",
        interest: "4 interested",
        totalSpot: "0 of 2 spots open",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
    CommitedModel(eventName: "Event6",address: "Raipur",
        dateTime: "Thursday",
        interest: "5 interested",
        totalSpot: "full",image:'https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_1280.jpg'),
    CommitedModel(eventName: "Event7",address: "Delhi",
        dateTime: "Saturday",
        interest: "12 interested",
        totalSpot: "2 spots are open",image:'https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_1280.jpg'),
    CommitedModel(eventName: "Event8",address: "Banasari",
        dateTime: "Monday",
        interest: "5 interested",
        totalSpot: "1 of 2 spots open",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
    CommitedModel(eventName: "Event8",address: "Banasari",
        dateTime: "Monday",
        interest: "5 interested",
        totalSpot: "1 of 2 spots open",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
  ];

  int index = 0;
}