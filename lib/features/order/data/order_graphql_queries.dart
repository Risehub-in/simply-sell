class OrderGraphQLQueries {
  static final createOrderMutation = '''
  mutation CreateOrder(
  \$customer_latitude: float8!,
  \$customer_longitude: float8!,
  \$delivery_address: String!,
  \$id: bigint!
	\$delivery_fee: numeric!,
  \$order_status: String!,
  \$user_id: uuid!,
  \$payment_id: String!,
  \$payment_amount: numeric!,
) {
  insert_orders(
    objects: {
  		customer_latitude: \$customer_latitude,
 		customer_longitude: \$customer_longitude,
  		delivery_address: \$delivery_address,
  		delivery_fee: \$delivery_fee,
    	id: \$id,
    	order_status: \$order_status,
    	user_id: \$user_id,
      payment_id: \$payment_id, 
      payment_amount: \$payment_amount
  }) {
    id
  }
}
  ''';

  static final createOrderItemsMutation = '''
mutation CreateOrderItems(
  \$item_quantity: Int!,
  \$order_id: bigint!,
   \$variant_id: bigint!,
   \$price: numeric!) {
  insert_order_items(
    objects: [
      item_quantity: \$item_quantity,
    order_id: \$order_id,
    price: \$price,
    variant_id: \$variant_id}
    ]) {
    affected_rows
  }
}
''';
}
