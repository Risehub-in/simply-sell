import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/categories/domain/entity/category_entity.dart';
import 'package:simply_sell/features/categories/presentation/cubit/category_cubit.dart';

import '../widgets/category_tile.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if (state is CategoryInitial) {
            return Center(child: CircularProgressIndicator());
          } else if (state is CategoryStateError) {
            Center(
              child: Text(state.message!),
            );
          } else if (state is CategoryStateDone) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                  ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.68,
                  ),
                  itemCount: state.categories.length,
                  itemBuilder: (context, index) {
                    CategoryEntity category = state.categories[index];
                    return CategoryTile(
                      category: category,
                    );
                  }),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
