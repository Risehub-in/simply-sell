import 'package:simply_sell/features/cart/domain/entity/cart_entity.dart';

import 'cart.graphql.dart';

class CartModel extends CartEntity {
  CartModel({
    required super.image,
    required super.price,
    required super.productTitle,
    super.uomName,
    super.uomValue,
    super.userId,
    required super.variantId,
  });

  factory CartModel.mapGraphQLCartToCartModel(
      Query$FetchCart$cart graphQLCart) {
    return CartModel(
      image: graphQLCart.image,
      price: graphQLCart.price,
      productTitle: graphQLCart.productTitle,
      uomName: graphQLCart.uomName,
      uomValue: graphQLCart.uomValue,
      userId: graphQLCart.userId,
      variantId: graphQLCart.variantId,
    );
  }
}
