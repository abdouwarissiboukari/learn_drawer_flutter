import 'package:app_drawer/model/datas.dart';
import 'package:app_drawer/model/photo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RealisationView extends StatelessWidget {
  List<Photo> allPiscines = Datas().allPiscinePhoto();
  List<Photo> allJardin = Datas().allJardinPhoto();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              "Nos réalisations",
              style: TextStyle(
                  color: Colors.lightGreen,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: const [
              Text("Piscines"),
            ],
          ),
          Container(
            height: size.height * 0.58,
            child: ListView.builder(
              itemCount: allPiscines.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Image.asset(
                    allPiscines[index].imageUrl,
                    height: size.height * 0.30,
                    width: size.width,
                    fit: BoxFit.cover,
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: const [
              Text("Jardins"),
            ],
          ),
          Container(
            height: size.height * 0.18,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: allJardin.length,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: jardinItems(
                      size: size, imageUrl: allJardin[index].imageUrl),
                );
              }),
            ),
          )
        ],
      ),
    );
  }

  Widget jardinItems({required Size size, required String imageUrl}) {
    return Container(
      margin: const EdgeInsets.all(3),
      height: size.height * 0.18,
      width: size.height * 0.18,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
