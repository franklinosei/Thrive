import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'history screen',
          style: TextStyle(
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
