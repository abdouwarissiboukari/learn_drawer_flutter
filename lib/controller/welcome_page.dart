import 'package:app_drawer/view/app_drawer.dart';
import 'package:app_drawer/view/realisation_view.dart';
import 'package:app_drawer/view/welcome_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> viewIndex = ValueNotifier(0);

class WelcomePage extends StatefulWidget {
  @override
  WelcomePageState createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  int viewType = 0;
  @override
  void initState() {
    super.initState();
    viewIndex.addListener(update);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: const Text(
          "Mon jardin idéel",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: (viewType == 0) ? WelcomeView() : RealisationView(),
    );
  }

  update() {
    setState(() {
      viewType = viewIndex.value;
    });
  }
}
