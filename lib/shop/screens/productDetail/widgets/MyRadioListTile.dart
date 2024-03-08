import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyRadioListTile extends StatelessWidget {
  const MyRadioListTile(
      {super.key,
      required this.title,
      required this.value,
      required this.groupValue,
      required this.selected,
      this.onChanged});

  final Widget title;
  final String value;
  final String groupValue;
  final bool selected;
  final void Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      contentPadding: EdgeInsets.zero,
      activeColor: Colors.orange,
      title: title,
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
      selected: selected,
    );
  }
}
