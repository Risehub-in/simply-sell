import 'package:flutter/material.dart';
import 'package:simply_sell/features/products/data/models/product_model.dart';
import 'package:simply_sell/features/products/presentation/pages/widgets/product_tile.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final supabase = Supabase.instance.client;

  List<ProductModel> products = [];
  bool _isLoading = false;

  @override
  void initState() {
    getProducts();
    super.initState();
  }

  Future<void> getProducts() async {
    try {
      setState(() {
        _isLoading = true;
      });
      final response = await supabase.from('products').select('');
      for (var data in response) {
        var product = ProductModel.fromJson(data);
        products.add(product);
      }
      setState(() {
        _isLoading = false;
      });
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: _isLoading
          ? Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                ProductModel product = products[index];
                return ProductTile(product: product);
              },
            ),
    );
  }
}
