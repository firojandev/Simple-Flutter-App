import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workflow/features/common/widgets/custom_app_bar.dart';
import 'package:go_router/go_router.dart';

import '../../app/route/route_path.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
        context.goNamed(
          RoutePath.home,
        );
      },),title: "Cart"),
      body: const Center(child:Text("Cart")),
    );
  }
}
