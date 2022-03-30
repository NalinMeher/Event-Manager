import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const keyStartupNumber = "startupNumber";

  String _haveStarted3Times = "";


  @override
  void initState() {
    super.initState();
    _incrementStartup();
  }

  Future<int> _getIntFromSharedPref() async {
    final prefs = await SharedPreferences.getInstance();
    final startupNumber = prefs.getInt(keyStartupNumber);
    if (startupNumber == null) {
      return 0;
    }
    return startupNumber;
  }

  Future<void> _resetCounter() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(keyStartupNumber, 0);
  }

  Future<void> _incrementStartup() async {
    final prefs = await SharedPreferences.getInstance();
    int lastStartupNumber = await _getIntFromSharedPref();
    int currentStartupNumber = ++lastStartupNumber;
    await prefs.setInt(keyStartupNumber, currentStartupNumber);

    if (currentStartupNumber == 3) {
      setState(
          () => _haveStarted3Times = '$currentStartupNumber Times Completed');
      await _resetCounter();
    } else {
      setState(() {
        _haveStarted3Times = "$currentStartupNumber Times started the app";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Event Manager"),
      ),
      body: Center(
        child: Text(
          _haveStarted3Times,
          style: const TextStyle(fontSize: 32),
        ),
      ),
    );
  }
}
