import 'package:breadtalk/shop/screens/productDetail/widgets/btmAddToCartContainer.dart';
import 'package:breadtalk/shop/screens/productDetail/widgets/productAttribute.dart';
import 'package:breadtalk/shop/screens/productDetail/widgets/productDesc.dart';
import 'package:breadtalk/shop/screens/productDetail/widgets/productDetailQuantity.dart';
import 'package:breadtalk/shop/screens/productDetail/widgets/productRating.dart';
import 'package:breadtalk/shop/screens/productDetail/widgets/productSlider.dart';
import 'package:flutter/material.dart';
import '../../../constants/imageContents.dart';
import '../../../constants/sizes.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BtmAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //product slider

            // Container(
            //   decoration: BoxDecoration(
            //       color: Colors.blueGrey.withOpacity(.2),
            //       borderRadius: BorderRadius.only(
            //         bottomLeft: Radius.circular(50),
            //         bottomRight: Radius.circular(50),
            //       )),
            //   child:
            const ProductSlider(carouselList: [
              ImageContents.productSlider1,
              ImageContents.productSlider2,
              ImageContents.productSlider3,
            ]),
            // ),

            SizedBox(
              height: Sizes.defaultSpace,
            ),

            const ProductDetailQuantity(),

            // SizedBox(
            //   height: Sizes.spaceBetween / 2,
            // ),
            Padding(
              padding: EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductDesc(),
                  SizedBox(
                    height: Sizes.spaceBetween,
                  ),
                  const ProductRating(),
                  SizedBox(
                    height: Sizes.spaceBetween,
                  ),
                  const ProductAttribute()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
