import 'package:flutter/material.dart';

import '../widgets/BudgetRow.dart';
import '../widgets/MenuRow.dart';
import '../widgets/MyDrawer.dart';
import '../widgets/NoteRow.dart';
import '../widgets/TasksList.dart';

class ItemDetailsPage extends StatelessWidget {
  const ItemDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("1 - Bend Baja"),
      ),
      body: const DashboardBody(),
    );
  }
}

class DashboardBody extends StatelessWidget {
  const DashboardBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 8),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(color: Colors.purple, width: 6),
          top: BorderSide(color: Colors.purple, width: 4),
          bottom: BorderSide(color: Colors.purple, width: 0.5),
        ),
      ),
      child: Column(
        children: const [
          MenuRow(),
          BudgetRow(),
          SizedBox(height: 16),
          NoteRow(),
          SizedBox(height: 16),
          TasksList(),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
