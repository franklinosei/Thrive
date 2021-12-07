import 'package:flutter/material.dart';
import 'package:thrive/screens/categories_screen/categories_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  const Categories(
      {Key? key, required this.categryName, required this.boxColor})
      : super(key: key);
  final String categryName;
  final Color boxColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return CategoryScreen(
                categoryName: categryName,
              );
            },
          ),
        );
      },
      child: Container(
        child: Center(
          child: Text(
            categryName,
            textAlign: TextAlign.center,
            style: GoogleFonts.nunito(
                color: const Color.fromRGBO(255, 252, 252, 1),
                fontSize: 16,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 1),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          color: boxColor, //Color.fromRGBO(0, 186, 235, 1),
        ),
      ),
    );
  }
}
