import 'package:simply_sell/features/cart/data/models/cart_model.dart';
import 'package:simply_sell/features/cart/data/remote_data_source/cart_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../core/config/hasura_service.dart';
import '../models/cart.graphql.dart';

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final Supabase supabase;
  final HasuraService hasuraService;

  CartRemoteDataSourceImpl(
      {required this.supabase, required this.hasuraService});
  @override
  Future<void> addToCart(CartModel cart) async {
    try {
      final result = await hasuraService.client.mutate$AddToCart(
        Options$Mutation$AddToCart(
          variables: Variables$Mutation$AddToCart(
            image: cart.image,
            price: cart.price,
            product_title: cart.productTitle,
            user_id: supabase.client.auth.currentSession!.user.id,
            variant_id: cart.variantId,
          ),
        ),
      );
      print(result);
    } catch (e) {
      e.toString();
      rethrow;
    }
  }

  @override
  Future<List<CartModel>> getCart() async {
    try {
      final result = await hasuraService.client.query$FetchCart();
      List<dynamic> dynamicList = result.data?['cart'];
      // print(dynamicList);
      var parsedList = dynamicList
          .map((cart) => Query$FetchCart$cart.fromJson(cart))
          .toList();
      List<CartModel> carts = parsedList
          .map((cart) => CartModel.mapGraphQLCartToCartModel(cart))
          .toList();
      return carts;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
