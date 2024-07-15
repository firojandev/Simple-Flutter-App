import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workflow/features/common/widgets/custom_app_bar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Products",
      ),
      body: Center(child: Text(category),),
    );
  }
}
