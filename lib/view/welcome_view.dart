import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/piscine 4.jpeg"), fit: BoxFit.cover),
          ),
        ),
        Container(
          width: size.width * 0.33,
          height: 38,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          transform: Matrix4.translationValues(0.0, -280.0, 0.0),
          child: const Text(
            "Accueil",
            style: TextStyle(color: Colors.lightGreen, fontSize: 20),
          ),
        ),
        Container(
          width: size.width * 0.81,
          height: 100,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.all(Radius.circular(3)),
          ),
          transform: Matrix4.translationValues(0.0, 250.0, 0.0),
          child: const Text(
            "Une expertise unique en province au service de tous les jardins du monde. Rapprochons-nous de la Nature.",
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
