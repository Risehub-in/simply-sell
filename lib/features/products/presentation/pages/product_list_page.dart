import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/products/presentation/bloc/cubit/product_cubit.dart';
import 'package:simply_sell/features/products/presentation/pages/widgets/product_tile.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/config/supabase_table.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final Supabase supabase = Supabase.instance;
  final ProductSupabaseTable productSupabaseTable = ProductSupabaseTable();

  Future getProducts() async {
    try {
      final response = await supabase.client
          .from('products')
          .select('*, variants!product_id!inner(*)');
      for (var data in response) {
        print(data);
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: getProducts, icon: Icon(Icons.add))],
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
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                      ),
                      itemCount: state.products.length,
                      itemBuilder: (context, index) {
                        final product = state.products[index];
                        return ProductTile(product: product);
                      },
                    ),
                  ],
                ),
              ),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
