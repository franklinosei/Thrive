import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';
import 'package:thrive/mock_data/data.dart';
import 'package:thrive/models/drug_model.dart';
import 'package:thrive/screens/categories_screen/widgets/drug_card.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  List<DrugModel> data = [...drugs];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 70,
        title: const Text('Category'),
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
      body: Container(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Search Products',
                      style: TextStyle(
                        color: greyColor,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: greyColor,
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
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
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(
                  data.length,
                  (index) => DrugCard(
                    drugName: data[index].drugName,
                    drugImage: data[index].drugImage,
                    drugPrice: data[index].drugPrice,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
