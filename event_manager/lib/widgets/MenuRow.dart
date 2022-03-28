import 'package:flutter/material.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 8, bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("ITEM", style: buildTextStyle()),
          const SizedBox(width: 45),
          Text("BUDGET", style: buildTextStyle()),
          const SizedBox(width: 1),
          Text("EXPENSE", style: buildTextStyle()),
        ],
      ),
    );
  }

  TextStyle buildTextStyle() {
    return TextStyle(
      fontWeight: FontWeight.bold,
      letterSpacing: 1.5,
      color: Colors.grey.shade500,
      fontSize: 8,
    );
  }
}
