import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/products/presentation/bloc/cubit/product_cubit.dart';
import 'package:simply_sell/features/products/presentation/pages/widgets/product_tile.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (_, state) {
          if (state is ProductStateInitial) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is ProductStateError) {
            return Center(child: Text(state.message));
          }
          if (state is ProductStateDone) {
            print(state.products.first.variants.first.id);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GridView.builder(
                padding: EdgeInsets.symmetric(vertical: 12),
                physics: BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.68,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                ),
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return ProductTile(product: product);
                },
              ),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
