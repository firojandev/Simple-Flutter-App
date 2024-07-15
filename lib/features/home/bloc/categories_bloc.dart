import 'package:bloc/bloc.dart';
import 'package:flutter_workflow/data/repo/repo.dart';
import 'package:flutter_workflow/features/home/bloc/categories_event.dart';
import 'package:flutter_workflow/features/home/bloc/categories_state.dart';
import 'package:flutter_workflow/utils/exceptions.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(CategoriesInitialState()) {
    on<CategoriesFetchEvent>((event, emit) async {
      emit(CategoriesLoadingState());
      try {
        final categories = await categoryRepo.getAllCategories();
        emit(CategoriesSuccessState(categories));
      } on RepoException catch (e) {
        emit(CategoriesErrorState(e.message));
      } catch (e) {
        emit(CategoriesErrorState(e.toString()));
      }
    });
  }
}
