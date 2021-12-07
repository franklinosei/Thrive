import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({Key? key, required this.image, required this.info})
      : super(key: key);
  final String image;
  final String info;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(60)),
          color: Colors.white,
        ),
        height: MediaQuery.of(context).size.width * 0.22,
        width: MediaQuery.of(context).size.width * 0.27,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image(image: AssetImage("assets/images/$image")),
            Text(
              info,
              style: GoogleFonts.nunito(),
            )
          ],
        ),
      ),
    );
  }
}
