import 'package:equatable/equatable.dart';

class CategoriesState extends Equatable {
  @override
  List<Object?> get props => [];
}

final class CategoriesInitialState extends CategoriesState {}

final class CategoriesLoadingState extends CategoriesState {}

final class CategoriesSuccessState extends CategoriesState {
  final List<String> categories;

  CategoriesSuccessState(this.categories);

  @override
  List<Object> get props => [categories];
}

final class CategoriesErrorState extends CategoriesState {
  final String message;

  CategoriesErrorState(this.message);

  @override
  List<Object> get props => [message];
}
