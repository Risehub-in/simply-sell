import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/categories/presentation/cubit/category_cubit.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: BlocListener<CategoryCubit, CategoryState>(
        listener: (context, state) {
          if (state is CategoryInitial) {
            print('Loading');
          } else if (state is CategoryStateError) {
            print(state.message);
          } else if (state is CategoryStateDone) {
            print(state.categories);
          }
        },
        child: SizedBox(),
      ),
    );
  }
}
