import 'package:flutter/material.dart';

class CustomersReviews extends StatelessWidget {
  final String customerName;
  final String customerCity;
  final String description;
  const CustomersReviews({
    Key? key,
    required this.customerName,
    required this.customerCity,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(left: 20.0),
      width: MediaQuery.of(context).size.width - 60,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: const Color(0xFFf5f7f9),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'images/branding.png',
                height: 80.0,
                width: 80.0,
              ),
              const SizedBox(width: 12.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    customerName,
                    style: const TextStyle(color: Color(0xFFa4be9f), fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    customerCity,
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              description,
              style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            children: const [
              SizedBox(width: 10.0),
              Icon(
                Icons.star_rate_rounded,
                size: 25.0,
                color: Colors.amber,
              ),
              Icon(
                Icons.star_rate_rounded,
                size: 25.0,
                color: Colors.amber,
              ),
              Icon(
                Icons.star_rate_rounded,
                size: 25.0,
                color: Colors.amber,
              ),
              Icon(
                Icons.star_rate_rounded,
                size: 25.0,
                color: Colors.amber,
              ),
              Icon(
                Icons.star_rate_rounded,
                size: 25.0,
                color: Colors.amber,
              )
            ],
          )
        ],
      ),
    );
  }
}
