import 'package:flutter/material.dart';

import '../widgets/EventItem.dart';
import '../widgets/MyDrawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard - Events"),
      ),
      body: const DashboardBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Event',
        child: const Icon(Icons.add),
      ),
      drawer: const MyDrawer(),
    );
  }
}

class DashboardBody extends StatelessWidget {
  const DashboardBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(4.0),
      children: const [
        EventItem(),
        EventItem(),
        EventItem(),
        EventItem(),
      ],
    );
  }
}



