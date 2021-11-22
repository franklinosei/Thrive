import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: bgColor,
      ),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
