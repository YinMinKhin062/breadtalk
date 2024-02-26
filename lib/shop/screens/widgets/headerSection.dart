import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key,required this.title,this.onPressed});

  final String title;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.w600),),
        TextButton(onPressed: onPressed, child:  Text("View All",style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.orange),))
      ],
    );
  }
}