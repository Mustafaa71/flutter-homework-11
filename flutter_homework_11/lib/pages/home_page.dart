import 'package:flutter/material.dart';
import 'package:flutter_homework_11/pages/product_details.dart';
import 'package:flutter_homework_11/sections/appbar_section.dart';
import 'package:flutter_homework_11/sections/customer_review.dart';
import 'package:flutter_homework_11/sections/low_price.dart';
import 'package:flutter_homework_11/sections/sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: ListView(
          children: [
            AppbarSection(
              onTap: (() => null),
              icon: Icons.dashboard_outlined,
            ),
            const Divider(thickness: 2.0),
            const Text(
              'Low Price',
              style: TextStyle(
                color: Color(0xFFa4be9f),
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const ProductDetail())));
                    },
                    child: const HomePageGoods(),
                  ),
                  const HomePageGoods(),
                  const HomePageGoods(),
                ],
              ),
            ),
            Image.network(
              'https://cdn.salla.sa/Aedxd/design/eSPIKpVma6Yo0WftvwwVEGpjnOGdupA3rCX63gG0.jpg?rand=0.9422407322490227?rand=0.7949860411290293?rand=0.7783700531809306?rand=0.8793837302711434',
            ),
            Image.network(
              'https://cdn.salla.sa/Aedxd/design/aIzm8Zi3euzRPfIvz6memq6BejFiNpgFwEeweRmQ.jpg?rand=0.9320803903145549?rand=0.27563371470465803?rand=0.42759597846688513?rand=0.01269328671803216',
            ),
            Image.network(
              'https://cdn.salla.sa/Aedxd/design/mv1lfttRfUl1yfM9pNxsy58pPWJo172H0wclRFGj.jpg?rand=0.630504347325717?rand=0.5184868075117148?rand=0.3400214384546366?rand=0.46533691104156705',
            ),
            Image.network(
              'https://cdn.salla.sa/Aedxd/design/n9fJqvWHqGpnibRBQNKdWcaAnknlz4nt1H6yqdQf.jpg?rand=0.9248438013437563?rand=0.369616655818401?rand=0.837021724824008?rand=0.24109499436775117',
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, bottom: 10.0),
              child: const Text(
                'customer reviews',
                style: TextStyle(
                  color: Color(0xFFa4be9f),
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CustomersReviews(
                    customerName: 'Khalil Aldawsari',
                    customerCity: 'AD Dammam',
                    description: 'Excelent',
                  ),
                  CustomersReviews(
                    customerName: 'Othman Alfaris',
                    customerCity: 'Alhasa',
                    description: 'Nice Products',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.category_outlined, size: 30.0), label: 'Category'),
          BottomNavigationBarItem(
            icon: ProfileSignIn(),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
