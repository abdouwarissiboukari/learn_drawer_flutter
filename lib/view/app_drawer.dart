import 'package:app_drawer/controller/welcome_page.dart';
import 'package:app_drawer/model/datas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          drawerTop(),
          drawerItem(
            index: 0,
            rowIcon: Icons.home_work,
            rowTitle: "Accueil",
            context: context,
          ),
          drawerItem(
            index: 1,
            rowIcon: Icons.real_estate_agent_outlined,
            rowTitle: "Réalisation",
            context: context,
          ),
        ],
      ),
    );
  }

  Widget drawerTop() {
    return DrawerHeader(
      decoration: BoxDecoration(color: Colors.lightGreen),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(Datas().getProfilImage()),
                radius: 40,
              ),
              const Text(
                "Mon jardin idéal",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget drawerItem(
      {required int index,
      required IconData rowIcon,
      required String rowTitle,
      required BuildContext context}) {
    return InkWell(
        onTap: () {
          if (index == 0) {
            viewIndex.value = 0;
          } else {
            viewIndex.value = 1;
          }
          Navigator.pop(context);
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 15, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(rowIcon),
              const SizedBox(
                width: 20,
              ),
              Text(rowTitle),
            ],
          ),
        ));
  }
}
