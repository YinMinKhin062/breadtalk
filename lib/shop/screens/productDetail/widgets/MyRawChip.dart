import 'package:flutter/material.dart';

class MyRawChip extends StatelessWidget {
  const MyRawChip({super.key, required this.label, required this.isSelected});

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      checkmarkColor: isSelected ? Colors.blueGrey : null,
      side: const BorderSide(color: Colors.blueGrey),
      label: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .labelSmall!
            .copyWith(color: Colors.blueGrey),
      ),
      selected: isSelected,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      // selectedColor: Colors.blueGrey.withOpacity(.7),
      labelStyle: const TextStyle(color: Colors.blueGrey),
    );
  }
}
