import 'dart:async';
import 'package:simply_sell/features/cart/data/models/cart_model.dart';
import 'package:simply_sell/features/cart/data/remote_data_source/cart_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../core/config/hasura_service.dart';
import '../cart.graphql.dart';

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
            user_id: supabase.client.auth.currentSession!.user.id,
            variant_id: cart.variantId,
            cart_quantity: cart.cartQuantity,
          ),
        ),
      );
      if (!result.hasException) {
        print(result.data);
      } else
        (result.exception.toString());
      ;
    } catch (e) {
      e.toString();
      rethrow;
    }
  }

  @override
  Stream<List<CartModel>> streamCart() {
    final resultStream = hasuraService.client
        .subscribe$getCartSubscription(
            Options$Subscription$getCartSubscription())
        .asyncExpand((result) {
      final cartData = result.data?['cart_items'] as List<dynamic>;
      print(cartData);
      final List<CartModel> cartItems =
          cartData.map((cartItem) => CartModel.fromJson(cartItem)).toList();
      print(cartItems);
      return Stream.value(cartItems);
    }).handleError((error) {
      print(error.toString());
    });
    return resultStream;
  }

  @override
  Future<void> updateCartQuantity(int cartId, int cartQuantity) async {
    try {
      await hasuraService.client.mutate$updateCartItemQuantity(
        Options$Mutation$updateCartItemQuantity(
          variables: Variables$Mutation$updateCartItemQuantity(
            id: cartId,
            cart_quantity: cartQuantity,
          ),
        ),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteCartItem(int cartId) async {
    try {
      final result = await hasuraService.client.mutate$DeleteSingleCartItem(
        Options$Mutation$DeleteSingleCartItem(
          variables: Variables$Mutation$DeleteSingleCartItem(id: cartId),
        ),
      );
      if (!result.hasException) {
        print(result.data);
      } else {
        print(result.exception);
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  @override
  Future<void> clearCart() async {
    try {
      var result = await hasuraService.client.mutate$ClearCart(
        Options$Mutation$ClearCart(
          variables: Variables$Mutation$ClearCart(
              user_id: supabase.client.auth.currentUser!.id),
        ),
      );
      if (!result.hasException) {
        print(result.data);
      } else {
        print(result.exception.toString());
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
