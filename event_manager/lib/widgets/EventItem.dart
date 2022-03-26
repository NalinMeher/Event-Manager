import 'package:flutter/material.dart';

import 'BudgetRow.dart';
import 'NoteRow.dart';
import 'TasksList.dart';

class EventItem extends StatelessWidget {
  const EventItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4.0),
      padding: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: Colors.cyan, width: 6),
          top: BorderSide(color: Colors.cyan, width: 4),
          bottom: BorderSide(color: Colors.cyan, width: 0.5),
        ),
      ),
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
                children: const [
                  BudgetRow(),
                  SizedBox(height: 16),
                  NoteRow(),
                  SizedBox(height: 16),
                  TasksList(),
                  SizedBox(height: 8),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}