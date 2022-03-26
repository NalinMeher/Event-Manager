import 'package:flutter/material.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "TASKS",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
            Text(
              "DUE DATE              ",
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Checkbox(
              value: false,
              onChanged: (bool? value) {},
            ),
            const Expanded(child: Text("Task Need to complete ASAP.")),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "1 Day",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("20-Mar-2020"),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Checkbox(
              value: false,
              onChanged: (bool? value) {},
            ),
            const Expanded(child: Text("Task Need to complete ASAP.")),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "1 Day",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("20-Mar-2020"),
              ],
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Checkbox(
              value: true,
              onChanged: (bool? value) {},
            ),
            const Expanded(
                child: Text("Task Need to complete ASAP.",
                    style: TextStyle(decoration: TextDecoration.lineThrough))),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "1 Day",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text("20-Mar-2020"),
              ],
            )
          ],
        ),
      ],
    );
  }
}
