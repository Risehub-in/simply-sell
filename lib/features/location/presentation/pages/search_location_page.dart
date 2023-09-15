import 'package:flutter/material.dart';
import '../widgets/address_list_widget.dart';
import '../widgets/get_current_location_widget.dart';
import '../widgets/prediction_widget.dart';
import '../widgets/search_location_widget.dart';

class SearchLocationPage extends StatelessWidget {
  const SearchLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enter your area or locatlity name',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchLocation(),
              SizedBox(height: 14),
              GetCurrentLocation(),
              Divider(height: 20, thickness: 0.3),
              PredictionWidget(),
              Divider(height: 20, thickness: 0.3),
              AddressListWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
