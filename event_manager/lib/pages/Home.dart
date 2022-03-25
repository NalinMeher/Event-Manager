import 'package:flutter/material.dart';

import '../widgets/MyDrawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Event Manager"),
      ),
      body: const Center(
        child: Text("Home"),
      ),
      drawer: const MyDrawer(),
    );
  }
}
