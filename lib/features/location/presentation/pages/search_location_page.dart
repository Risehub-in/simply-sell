import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
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
              GestureDetector(
                onTap: () {
                  print('New Address');
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.near_me,
                      size: 18,
                    ),
                    SizedBox(width: 6),
                    Text(
                      'Use my current location',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.primary,
                          ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 28,
                thickness: 0.3,
              ),
              PredictionWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
