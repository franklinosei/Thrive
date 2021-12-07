import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';

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
      Container(
          child: const Center(
            child: Text(
              'Headache',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(255, 252, 252, 1),
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Color.fromRGBO(0, 186, 235, 1),
          )),
      Container(
          child: const Center(
            child: Text(
              'Cold',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(255, 250, 250, 1),
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Color.fromRGBO(127, 255, 132, 1),
          )),
      Container(
          child: const Center(
            child: Text(
              'Body Pain',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(255, 253, 253, 1),
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Color.fromRGBO(8, 230, 230, 1),
          )),
      Container(
          child: const Center(
            child: Text(
              'Stomach Ache',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 251, 251, 1),
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Color.fromRGBO(177, 2, 221, 1),
          )),
      Container(
          child: const Center(
            child: Text(
              'Sore Throat',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 251, 251, 1),
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Color.fromRGBO(45, 129, 255, 1),
          )),
      Container(
          child: const Center(
            child: Text(
              'Condom',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(255, 250, 250, 1),
                  fontFamily: 'Nunito',
                  fontSize: 16,
                  letterSpacing:
                      0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            color: Color.fromRGBO(255, 93, 141, 1),
          ))
    ];
    return Scaffold(
      backgroundColor: const Color(0xffF8F8FB),
      //backgroundColor: Colors.green,
      appBar: AppBar(
        // toolbarHeight: 70,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Thrive ',
              style: GoogleFonts.montserratAlternates(
                  color: const Color(0xff9F0203), fontSize: 18.13),
            ),
            Text(
              'pharamcy ',
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Search Products',
                          style: TextStyle(
                              color: Color(0xff898989),
                              fontFamily: 'Nunito',
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
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
                    children: [
                      Card(
                        elevation: 2,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            color: Colors.white,
                          ),
                          height: MediaQuery.of(context).size.width * 0.22,
                          width: MediaQuery.of(context).size.width * 0.27,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Image(image: AssetImage("assets/images/1.png")),
                              Text("Claim Drug or Prescription"),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            color: Colors.white,
                          ),
                          height: MediaQuery.of(context).size.width * 0.22,
                          width: MediaQuery.of(context).size.width * 0.27,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Image(image: AssetImage("assets/images/2.png")),
                              Text("Product Picture"),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        elevation: 2,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            color: Colors.white,
                          ),
                          height: MediaQuery.of(context).size.width * 0.22,
                          width: MediaQuery.of(context).size.width * 0.27,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Image(image: AssetImage("assets/images/3.png")),
                              Text(
                                "Pharmacist Assistant",
                                style: TextStyle(
                                    fontSize: 14, fontFamily: 'Nunito'),
                              ),
                            ],
                          ),
                        ),
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
          const ListTile(
            leading: Text(
              "Categories",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.5),
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
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              color: Colors.white,
              child: ListTile(
                leading: Image(image: AssetImage("assets/images/pharma.png")),
                title: Text("Pharmacist on strike",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                subtitle: Text(
                  "National Association of Pharmacists...",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
