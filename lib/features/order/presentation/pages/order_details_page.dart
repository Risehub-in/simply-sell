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
            final client = HasuraService(supabase: Supabase.instance).client;
            final result =
                await client.query$GetOrders(Options$Query$GetOrders());
            print(result.data);
          },
          child: Text('Pay Now'),
        ),
      ),
    );
  }
}
