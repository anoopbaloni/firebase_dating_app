import 'package:flutter/cupertino.dart';

import '../model/hostListModel.dart';

class HostListProvider extends ChangeNotifier{

  bool basic=true;
  bool invited=false;
  bool hosting=true;
  bool committed= false;
  bool showMore=false;
  int count=4;

  init(){
  showMore=false;
  invited=false;
  hosting=true;
  committed = false;
  notifyListeners();
  }
  setInvited(value){
  invited=value;
  notifyListeners();
  }
  setHosting(value){
  hosting=value;
  notifyListeners();
  }
  setShowMore(value){
  showMore=value;
  notifyListeners();
  }
  setCommitted(value){
    committed=value;
    print("committed$committed");
    notifyListeners();
  }

  setHostingColor(value){
    basic = value;
    notifyListeners();
  }

  final List<HostListModel> hostList = [
  HostListModel(eventName: "Event1",address: "Dehradun",
  dateTime: "Tuesday",
  interest: "9",
  totalSpot: "4",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),

  HostListModel(eventName: "Event2",address: "Mussoorie",
  dateTime: "Monday",
  interest: "1",
  totalSpot: "2",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),

  HostListModel(eventName: "Event3",address: "Thatyur",
  dateTime: "Sun,Jun 7 2024,in the morning",
  interest: "10",
  totalSpot: "2",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
  HostListModel(eventName: "Event4",address: "Nainbagh",
  dateTime: "Wednesday",
  interest: "3",
  totalSpot: "1",image:    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg'),
  HostListModel(eventName: "Event5",address: "Thatyur",
  dateTime: "Sunday",
  interest: "4",
  totalSpot: "5",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
  HostListModel(eventName: "Event6",address: "Raipur",
  dateTime: "Thursday",
  interest: "5",
  totalSpot: "3",image:'https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_1280.jpg'),
  HostListModel(eventName: "Event7",address: "Delhi",
  dateTime: "Saturday",
  interest: "12",
  totalSpot: "7",image:'https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_1280.jpg'),
  HostListModel(eventName: "Event8",address: "Banasari",
  dateTime: "Monday",
  interest: "5",
  totalSpot: "1",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
  HostListModel(eventName: "Event8",address: "Banasari",
  dateTime: "Monday",
  interest: "5",
  totalSpot: "1",image:'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg'),
  ];

  int index = 0;

  }


// final CarouselController carouselController = CarouselController();


