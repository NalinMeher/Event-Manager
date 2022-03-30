import 'package:event_manager/pages/Home.dart';
import 'package:event_manager/pages/ItemDetailsPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Event Manager",
    theme: ThemeData(primarySwatch: Colors.purple),
    routes: {
      "/" : (context) => const Home(),
      "/item_detail" : (context) => const ItemDetailsPage(),
    },
  ));
}
