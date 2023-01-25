import 'package:flutter/material.dart';

class AppbarSection extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const AppbarSection({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Icon(
            icon,
            size: 35.0,
          ),
        ),
        const SizedBox(width: 8.0),
        const Icon(
          Icons.search,
          size: 35.0,
        ),
        const SizedBox(width: 8.0),
        InkWell(
          onTap: onTap,
          child: const Icon(
            Icons.shopping_cart_outlined,
            size: 35.0,
          ),
        ),
        const Spacer(),
        const Image(
          height: 60.0,
          width: 60.0,
          image: NetworkImage(
            'https://images-ext-2.discordapp.net/external/16UjiqVuvVHLJmDnUKO3Hd-j6r7-LOpE3t2fKUn4x08/https/cdn.salla.sa/Aedxd/8D8EilcRfEvFAvtNwz5eh9828wz1xhZiOOyXHYiv.png',
          ),
        ),
      ],
    );
  }
}
