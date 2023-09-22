import 'package:flutter/material.dart';
import 'package:simply_sell/core/config/hasura_service.dart';
import 'package:simply_sell/features/order/data/order.graphql.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class OrderDetailsPage extends StatefulWidget {
  const OrderDetailsPage({super.key});

  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}

class _OrderDetailsPageState extends State<OrderDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              final client = HasuraService(supabase: Supabase.instance).client;
              final result =
                  await client.query$FetchOrders(Options$Query$FetchOrders());
              final dynamicList = result.data?['products'] as List<dynamic>;
              final parsedData = dynamicList
                  .map((product) => Query$FetchOrders$orders.fromJson(product))
                  .toList();

              print(parsedData);
            } catch (e) {
              print(e.toString());
            }
          },
          child: Text('Pay Now'),
        ),
      ),
    );
  }
}
