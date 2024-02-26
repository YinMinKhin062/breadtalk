import 'package:flutter/material.dart';

import '../../../constants/sizes.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: EdgeInsets.all(Sizes.spaceBetween),
        child: Row(
          children: [
            // TextFormField()
            Icon(
              icon,
              color: Colors.grey,
              size: 16,
            ),
            SizedBox(
              width: Sizes.lg,
            ),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),//bodymedium
            )
          ],
        ),
      ),
    );
  }
}
