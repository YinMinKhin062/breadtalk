import 'package:flutter/material.dart';

import 'IconwithTxt.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        //Rating
        IconwithTxt(
          color: Colors.amber,
          icon: Icons.star,
          txt: "4.5",
        ),
        //alarm
        IconwithTxt(
          color: Colors.blueGrey,
          icon: Icons.alarm,
          txt: "15 Min",
        ),
        //fire
        IconwithTxt(
          color: Colors.red,
          icon: Icons.local_fire_department_outlined,
          txt: "100 Kcal",
        ),
      ],
    );
  }
}
