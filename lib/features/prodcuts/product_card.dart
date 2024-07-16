import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workflow/data/models/product_model.dart';
import 'package:flutter_workflow/utils/my_text_style.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key, required this.productModel, required this.addToCart});

  final ProductModel productModel;

  final Function() addToCart;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Image.network(
              productModel.image,
              height: 150,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(productModel.rating.rate.toString())
                  ],
                ),
                Text('\$${productModel.price.toStringAsFixed(2)}'),
              ],
            ),
          ),
          Expanded(
              child: Text(
            productModel.title,
            style: MyTextStyle.titleStyle,
            maxLines: 2,
            textAlign: TextAlign.center,
          )),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
              onPressed: addToCart,
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.green.shade300),
              ),
              child: const Text(
                'Add to Card',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(height: 8,),
        ],
      ),
    );
  }
}
