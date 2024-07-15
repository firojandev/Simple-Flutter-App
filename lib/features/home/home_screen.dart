import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_workflow/features/common/widgets/custom_app_bar.dart';
import 'package:flutter_workflow/features/home/bloc/categories_bloc.dart';
import 'package:flutter_workflow/features/home/bloc/categories_event.dart';
import 'package:flutter_workflow/features/home/catgeories_view.dart';
import 'package:flutter_workflow/utils/my_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CategoriesBloc>(
        create: (_) => CategoriesBloc()..add(CategoriesFetchEvent()),
        child: Scaffold(
          appBar: CustomAppBar(title: "Home"),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.grey, // Background color
                      padding: EdgeInsets.all(10), // Optional padding
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8), // Optional border radius
                      ),
                    ),
                    onPressed: () => {},
                    child:
                    Text("All", style: MyTextStyle.titleStyle,),
                  ),
                  Expanded(child: CategoriesView())
                ],
              ),
            ),
          ),
        ));
  }
}
