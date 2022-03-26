import 'package:flutter/material.dart';

class BudgetRow extends StatelessWidget {
  const BudgetRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Bend Baja"),
          Column(
            children: [
              Text(
                "Current",
                style: greenSmallText(),
              ),
              Text("40,000/-"),
              const SizedBox(height: 4),
              Text(
                "Origional",
                style: redSmallText(),
              ),
              Text(
                "35,000/-",
                style: fadeSmallText(),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                "Paid",
                style: greenSmallText(),
              ),
              Text("5,000/-"),
              const SizedBox(height: 4),
              Text(
                "Due",
                style: redSmallText(),
              ),
              Text(
                "35,000/-",
                style: fadeSmallText(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

TextStyle greenSmallText() {
  return const TextStyle(
    color: Colors.green,
    fontSize: 10,
  );
}

TextStyle redSmallText() {
  return const TextStyle(
    color: Colors.red,
    fontSize: 8,
  );
}

TextStyle fadeSmallText() {
  return const TextStyle(
    color: Colors.grey,
    fontSize: 10,
  );
}
