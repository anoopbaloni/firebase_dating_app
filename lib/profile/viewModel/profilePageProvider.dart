//import 'package:carousel_slider/carousel_controller.dart';

import 'package:flutter/cupertino.dart';

class ProfilePageProvider extends ChangeNotifier{

  List<String> imageList = [
    'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixid=M3wxMjA3fDB8MXxzZWFyY2h8M3x8bmF0dXJhbHxlbnwwfHx8fDE3MTcxNTUyNDd8MA&ixlib=rb-4.0.3',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
    'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixid=M3wxMjA3fDB8MXxzZWFyY2h8M3x8bmF0dXJhbHxlbnwwfHx8fDE3MTcxNTUyNDd8MA&ixlib=rb-4.0.3',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
    'https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_1280.jpg',
    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
    'https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_1280.jpg',
  ];
  int index =0;

  bool basic = true;
  setBasicAndPref(value){
      basic = value;
      notifyListeners();
  }
  //final CarouselController carouselController = CarouselController();
}