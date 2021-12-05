import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';

class UserSettingsScreen extends StatefulWidget {
  const UserSettingsScreen({Key? key}) : super(key: key);

  @override
  _UserSettingsScreenState createState() => _UserSettingsScreenState();
}

class _UserSettingsScreenState extends State<UserSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'User settings screen',
          style: TextStyle(
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
