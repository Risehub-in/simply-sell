import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/products/presentation/pages/widgets/product_tile.dart';
import '../cubit/product_cubit.dart';

class ProductsPage extends StatefulWidget {
  final int category_id;
  const ProductsPage({super.key, required this.category_id});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  void initState() {
    context.read<ProductCubit>().getProductsByCategoryId(widget.category_id);
    super.initState();
  }

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
            return GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 0),
              physics: BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.60,
              ),
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                final product = state.products[index];
                return ProductTile(product: product);
              },
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
