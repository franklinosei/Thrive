import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Help screen',
          style: TextStyle(
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
