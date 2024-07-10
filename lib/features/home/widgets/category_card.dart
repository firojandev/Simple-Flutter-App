import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workflow/utils/my_text_style.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.categoryName, this.onTap});

  final String categoryName;
  final Function()? onTap;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0,right: 8.0),
            child: Text(
              categoryName,
              style: MyTextStyle.textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
