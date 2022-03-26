import 'package:flutter/material.dart';

import '../widgets/BudgetRow.dart';
import '../widgets/MyDrawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Event Manager"),
      ),
      body: const DashboardBody(),
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
      padding: const EdgeInsets.all(8.0),
      children: const [EventItem()],
    );
  }
}

class EventItem extends StatelessWidget {
  const EventItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        left: BorderSide(color: Colors.cyan, width: 6),
        top: BorderSide(color: Colors.cyan, width: 4),
        bottom: BorderSide(color: Colors.cyan, width: 0.5),
      )),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Container(
                alignment: Alignment.topLeft,
                child: Text("1", style: TextStyle(color: Colors.white)),
              ),
              padding: EdgeInsets.only(left: 4, right: 8),
              decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BudgetRow(),
                  Text("Note"),
                  Text("Task1"),
                  Text("Task2"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
