import 'package:breadtalk/constants/textContents.dart';

import 'package:breadtalk/shop/screens/widgets/productWidgets/productWidget.dart';
import 'package:breadtalk/shop/screens/widgets/storeWidgets/myGridView.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/sizes.dart';
import 'controller/allProductController.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({super.key, this.initialValue});

  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    final allProductController = Get.put(AllProductController());

    return Column(
      children: [
        //dropdown
        DropdownButtonFormField2<String>(
          isExpanded: true,
          value: initialValue,
          decoration: InputDecoration(
              prefixIcon: const Icon(Icons.tune),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.orange),
                borderRadius: BorderRadius.circular(30),
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: Sizes.spaceBetween - 4),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              )),
          hint: Text('Default Sorting',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.grey,
                  )),
          items: TxtContexts.lists
              .map((item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )))
              .toList(),
          onChanged: (value) {
            allProductController.selectedSortValue.value = value!;
          },
          onSaved: (newValue) {
            // selectedValue = newValue;
          },
          buttonStyleData:
              const ButtonStyleData(padding: EdgeInsets.only(right: 8)),
          iconStyleData: const IconStyleData(icon: Icon(Icons.arrow_drop_down)),
          dropdownStyleData: DropdownStyleData(
            width: 305,
            offset: const Offset(-43, -12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          ),
          menuItemStyleData: const MenuItemStyleData(
              padding: EdgeInsets.symmetric(horizontal: 20)),
        ),

        SizedBox(height: Sizes.spaceBetweenSections),

        //sorted product gridview
        MyGridView(
          itemCount: 10,
          itemBuilder: (p0, p1) => const ProductWidget(),
        )
      ],
    );
  }
}
