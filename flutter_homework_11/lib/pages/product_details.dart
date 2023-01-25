import 'package:flutter/material.dart';
import 'package:flutter_homework_11/sections/appbar_section.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: ListView(
          children: [
            AppbarSection(
              onTap: () {
                Navigator.pop(context);
              },
              icon: Icons.arrow_back_ios_new_sharp,
            ),
            const SizedBox(height: 15.0),
            Row(
              children: const [
                Icon(
                  Icons.home,
                  size: 30.0,
                  color: Colors.green,
                ),
                Text(
                  ' / New /',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Herbal Strategi Just Out Herbal Ant Repellent',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network('https://cdn.salla.sa/Aedxd/TmuM4FVQof6kSoJYLEbaM82casXt00ZakLG8qES5.jpg'),
            const Text(
              'Herbal Strategi Just Out Herbal Ant Repellent',
              style: TextStyle(
                color: Color(0xFFa4be9f),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            const Text(
              '27 SR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: const [
                Icon(
                  Icons.share,
                  size: 30.0,
                ),
                SizedBox(width: 20.0),
                Icon(
                  Icons.favorite,
                  size: 30.0,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 25.0),
              padding: const EdgeInsets.all(40.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.green),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Price',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        '27 SR',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40.0),
                  InkWell(
                    onTap: () {
                      print('object');
                    },
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: const Color(0xFFa4be9f),
                        ),
                        child: const Text(
                          'ADD to Cart',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
