import 'package:flutter/material.dart';

class NoteRow extends StatelessWidget {
  const NoteRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Note",
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
        SizedBox(width: 8),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Text(
              "Nothing Special note is present here, but you can add any comment if you need anytime.",
              style: TextStyle(fontSize: 11, color: Colors.grey.shade700),
              maxLines: 2,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
