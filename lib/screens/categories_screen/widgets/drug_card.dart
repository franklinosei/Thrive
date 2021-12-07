import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';

class DrugCard extends StatefulWidget {
  final drugName;
  final drugImage;
  final drugPrice;
  const DrugCard(
      {Key? key,
      required this.drugName,
      required this.drugImage,
      required this.drugPrice})
      : super(key: key);

  @override
  State<DrugCard> createState() => _DrugCardState();
}

class _DrugCardState extends State<DrugCard> {
  int drugQuantity = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        height: 190,
        width: 177,
        child: Card(
          elevation: 10,
          shadowColor: greyColor.withOpacity(0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 10,
            ),
            child: Column(
              children: [
                Image.asset(widget.drugImage),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.drugName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Ghs${drugQuantity < 1 ? widget.drugPrice : widget.drugPrice * drugQuantity}',
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (drugQuantity > 0) {
                          setState(() {
                            drugQuantity--;
                          });
                        }
                      },
                      child: const Center(
                        child: Text(
                          '-',
                          style: TextStyle(
                            fontSize: 15,
                            color: blackColor,
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: greyColor.withOpacity(0.4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        maximumSize: const Size(30, 30),
                        minimumSize: const Size(5, 5),
                        padding: const EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                      ),
                    ),
                    Text('$drugQuantity'),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          drugQuantity++;
                        });
                      },
                      child: const Text(
                        '+',
                        style: TextStyle(
                          fontSize: 15,
                          color: blackColor,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: greyColor.withOpacity(0.4),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        maximumSize: const Size(31, 31),
                        minimumSize: const Size(30, 30),
                        padding: const EdgeInsets.only(
                          right: 10,
                          left: 10,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
