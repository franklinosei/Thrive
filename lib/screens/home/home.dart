// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';
import 'package:thrive/components/quick_actions.dart';
import 'package:thrive/components/categories.dart';
import 'package:thrive/mock_data/data.dart';
import 'package:thrive/models/drug_model.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<DrugModel> data = [...drugs];

  @override
  Widget build(BuildContext context) {
    List<Widget> symptoms = [
      const Categories(
        categryName: "Headache",
        boxColor: Color.fromRGBO(0, 186, 235, 1),
      ),
      const Categories(
        categryName: "Cold",
        boxColor: Color.fromRGBO(127, 255, 132, 1),
      ),
      const Categories(
        categryName: "Body Pain",
        boxColor: Color.fromRGBO(8, 230, 230, 1),
      ),
      const Categories(
        categryName: "Stomach Ache",
        boxColor: Color.fromRGBO(177, 2, 221, 1),
      ),
      const Categories(
        categryName: "Sore Throat",
        boxColor: Color.fromRGBO(45, 129, 255, 1),
      ),
      const Categories(
        categryName: "Condom",
        boxColor: Color.fromRGBO(255, 93, 141, 1),
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF8F8FB),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Thrive ',
              style: GoogleFonts.montserratAlternates(
                  color: const Color(0xff9F0203), fontSize: 18.13),
            ),
            Text(
              'pharmacy ',
              style: GoogleFonts.montserratAlternates(fontSize: 18.13),
            ),
          ],
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            color: blackColor,
            size: 30,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: blackColor,
              size: 30,
            ),
            onPressed: () => print('cart'),
            padding: EdgeInsets.zero,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Search Products',
                          style: GoogleFonts.nunito(
                              color: const Color(0xff898989),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        const Icon(
                          Icons.search,
                          color: greyColor,
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      side: const BorderSide(
                        width: 1.0,
                        color: Colors.grey,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      primary: whiteColor,
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      QuickActions(
                        info: "Claim Drug or Prescription",
                        image: "1.png",
                      ),
                      QuickActions(
                        info: "Product Picture",
                        image: "2.png",
                      ),
                      QuickActions(
                        info: "Pharmacist Assistant",
                        image: "3.png",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Text(
              "Categories",
              style:
                  GoogleFonts.nunito(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 18.5, right: 18.5, bottom: 18.5, top: 13),
            child: Flexible(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 23,
                    mainAxisSpacing: 20),
                itemBuilder: (BuildContext context, int index) {
                  return Container(child: symptoms[index]);
                },
                itemCount: symptoms.length,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Card(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              color: Colors.white,
              child: ListTile(
                leading:
                    const Image(image: AssetImage("assets/images/pharma.png")),
                title: Text("Pharmacists on strike",
                    style: GoogleFonts.nunito(
                        fontWeight: FontWeight.bold, fontSize: 16)),
                subtitle: Text(
                  "National Association of Pharmacists...",
                  style: GoogleFonts.nunito(
                      fontWeight: FontWeight.w300, fontSize: 12),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
