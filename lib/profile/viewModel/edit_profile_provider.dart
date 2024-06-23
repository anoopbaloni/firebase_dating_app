import 'package:flutter/cupertino.dart';

class EditProfileProvider extends ChangeNotifier {

  List<String> imageList = [
    'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixid=M3wxMjA3fDB8MXxzZWFyY2h8M3x8bmF0dXJhbHxlbnwwfHx8fDE3MTcxNTUyNDd8MA&ixlib=rb-4.0.3',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
    'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixid=M3wxMjA3fDB8MXxzZWFyY2h8M3x8bmF0dXJhbHxlbnwwfHx8fDE3MTcxNTUyNDd8MA&ixlib=rb-4.0.3',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
    'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixid=M3wxMjA3fDB8MXxzZWFyY2h8M3x8bmF0dXJhbHxlbnwwfHx8fDE3MTcxNTUyNDd8MA&ixlib=rb-4.0.3',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
    'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixid=M3wxMjA3fDB8MXxzZWFyY2h8M3x8bmF0dXJhbHxlbnwwfHx8fDE3MTcxNTUyNDd8MA&ixlib=rb-4.0.3',
    'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
    'https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_640.jpg',
    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
    'https://cdn.pixabay.com/photo/2015/06/19/21/24/avenue-815297_1280.jpg',
  ];
  int index = 0;

  List<String> heightData = ["Item1", "Item2", "Item3", "Item4"];
  String heightItem = "Item1";

  List<String> genderData = ['Male', 'Female'];
  String genderItem = "Male";

  List<int> ageData = [10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25];
  int ageItem = 21;

  List<String> relationShipData = ['Single','Married','Never Married'];
  String relationShipItem = 'Single';

  setHeightItem(value) {
    heightItem = value;
    notifyListeners();
  }

  setGenderItem(value) {
    genderItem = value;
    notifyListeners();
  }

   setAgeItem(value) {
    ageItem = value;
    notifyListeners();
  }

  setRelationShipItem(value) {
    relationShipItem = value;
    notifyListeners();
  }
}