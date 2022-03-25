import 'package:event_manager/pages/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Event Manager",
    home: const Home(),
    theme: ThemeData(primarySwatch: Colors.purple),
  ));
}
