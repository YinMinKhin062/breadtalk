import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Iconsax.heart,size: 22,color: Colors.black,)),
        Positioned(
          right: 2,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(18)),
            child: Center(
              child: Text(
                "2",
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}