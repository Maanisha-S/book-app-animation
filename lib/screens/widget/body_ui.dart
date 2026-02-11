import 'package:book_app/screens/widget/best_selling.dart';
import 'package:book_app/screens/widget/header.dart';
import 'package:book_app/screens/widget/pick_up.dart';
import 'package:book_app/screens/widget/types_card.dart';
import 'package:flutter/material.dart';

class BodyUI extends StatefulWidget {
  const BodyUI({super.key});

  @override
  State<BodyUI> createState() => _BodyUIState();
}

class _BodyUIState extends State<BodyUI> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.all(height * 0.03),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(),
            SizedBox(
              height: height * 0.02,
            ),
            BestSelling(),
            SizedBox(
              height: height * 0.02,
            ),
            PickUp(),
            SizedBox(
              height: height * 0.03,
            ),
            const TypesCard()
          ],
        ),
      ),
    );
  }
}
