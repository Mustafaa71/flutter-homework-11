import 'package:flutter/material.dart';

class HomePageGoods extends StatelessWidget {
  const HomePageGoods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network('https://cdn.salla.sa/Aedxd/TmuM4FVQof6kSoJYLEbaM82casXt00ZakLG8qES5.jpg'),
        Container(
          height: 115.0,
          width: 335.0,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.only(left: 27.0, right: 27.0),
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Column(
            children: [
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut vulputate nunc eu ante suscipit,',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text('27 SR'), Icon(Icons.shopping_bag)],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
