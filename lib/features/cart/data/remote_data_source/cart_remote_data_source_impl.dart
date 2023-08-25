import 'dart:async';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:simply_sell/features/cart/data/models/cart_model.dart';
import 'package:simply_sell/features/cart/data/remote_data_source/cart_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../core/config/hasura_service.dart';
import '../models/cart.graphql.dart';

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  final Supabase supabase;
  final HasuraService hasuraService;

  CartRemoteDataSourceImpl({
    required this.supabase,
    required this.hasuraService,
  });

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
  Stream<List<CartModel>> streamCart() {
    final resultStream =
        hasuraService.client.subscribe(SubscriptionOptions(document: gql('''
      subscription CartSubscription {
        cart {
          image
          price
          product_title
          uom_name
          uom_value
          user_id
          variant_id
        }
      }
          '''))).asyncExpand((result) {
      final cartData = result.data?['cart'] as List<dynamic>;
      final List<CartModel> cartItems =
          cartData.map((cartItem) => CartModel.fromJson(cartItem)).toList();
      return Stream.value(cartItems);
    }).handleError((error) {
      print(error.toString());
    });
    return resultStream;
  }
}
