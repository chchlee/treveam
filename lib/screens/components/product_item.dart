import 'package:flutter/material.dart';
import 'package:treveam/string_extensions.dart';
import 'package:treveam/theme.dart';

import '../../models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final bool? lineChange;
  final double? textConatinerHeight;

  const ProductItem({
    Key? key,
    required this.product,
    this.lineChange = false,
    this.textConatinerHeight = 80,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {},
            child: Image.network(
              product.imageUrl ?? "assets/image/treveam_banner_0.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: textConatinerHeight,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: "${product.title} ${lineChange == true ? "\n" : ""}",
                  style: textTheme().subtitle1),
              TextSpan(
                text: "${product.discount}% ",
                style: textTheme().headline2?.copyWith(color: Colors.red),
              ),
              TextSpan(
                  text:
                      discountPrice(product.price ?? 0, product.discount ?? 0),
                  style: textTheme().headline2),
              TextSpan(
                text: "${product.price.toString().numberFormat()}원",
                style: textTheme().bodyText2?.copyWith(
                      decoration: TextDecoration.lineThrough,
                    ),
              )
            ])),
          ),
        )
      ],
    );
  }

  String discountPrice(int price, int discount) {
    double discountRate = ((100 - discount) / 100);
    int discountPrice = (price * discountRate).toInt();
    return "${discountPrice.toString().numberFormat()}원 ";
  }
}
