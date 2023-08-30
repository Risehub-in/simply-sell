import 'dart:async';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:simply_sell/core/constants/queries.dart';
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
            product_id: cart.productId,
            image: cart.image,
            price: cart.price,
            product_title: cart.productTitle,
            user_id: supabase.client.auth.currentSession!.user.id,
            variant_id: cart.variantId,
            uom_name: cart.uomName,
            uom_value: cart.uomValue,
            cart_quantity: cart.cartQuantity,
            mrp: cart.mrp,
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
    final resultStream = hasuraService.client
        .subscribe(
      SubscriptionOptions(
        document: gql(
          GqlQueries.cartSubscription,
        ),
      ),
    )
        .asyncExpand((result) {
      final cartData = result.data?['cart'] as List<dynamic>;
      final List<CartModel> cartItems =
          cartData.map((cartItem) => CartModel.fromJson(cartItem)).toList();
      // print(cartItems);
      return Stream.value(cartItems);
    }).handleError((error) {
      print(error.toString());
    });
    return resultStream;
  }

  @override
  Future<void> updateCartQuantity(int variantId, int cartQuantity) async {
    try {
      await hasuraService.client.mutate(MutationOptions(
          document: gql(GqlQueries.updateCartQuery),
          variables: {
            'variant_id': variantId,
            'cart_quantity': cartQuantity,
          }));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteCartItem(int variantId) async {
    try {
      hasuraService.client.mutate(
        MutationOptions(
          document: gql(
            GqlQueries.deleteCartItem,
          ),
          variables: {'variant_id': variantId},
        ),
      );
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
