import 'package:app_drawer/model/photo.dart';

class Datas {
  final String imagePath = "images";

  List<Photo> allPiscinePhoto() {
    return [
      Photo(index: 0, imageUrl: "$imagePath/piscine 1.jpeg"),
      Photo(index: 1, imageUrl: "$imagePath/piscine 2.jpeg"),
      Photo(index: 2, imageUrl: "$imagePath/piscine 3.jpeg"),
      Photo(index: 3, imageUrl: "$imagePath/piscine 4.jpeg"),
      Photo(index: 4, imageUrl: "$imagePath/piscine 5.jpeg"),
    ];
  }

  List<Photo> allJardinPhoto() {
    return [
      Photo(index: 0, imageUrl: "$imagePath/jardin 1.jpeg"),
      Photo(index: 1, imageUrl: "$imagePath/jardin 2.jpeg"),
      Photo(index: 2, imageUrl: "$imagePath/jardin 3.jpeg"),
      Photo(index: 3, imageUrl: "$imagePath/jardin 4.jpeg"),
      Photo(index: 4, imageUrl: "$imagePath/jardin 5.jpeg"),
    ];
  }

  String getProfilImage() {
    return "$imagePath/piscine 1.jpeg";
  }

  String getAccueilImage() {
    return "$imagePath/piscine 4.jpeg";
  }
}
