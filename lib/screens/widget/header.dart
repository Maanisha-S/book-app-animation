import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Row(
      children: [
        const Icon(Icons.menu),
        const Spacer(),
        Row(
          children: [
            const Icon(Icons.search),
            SizedBox(width: width * 0.05),
            const Icon(Icons.person),
          ],
        )
      ],
    );
  }
}
