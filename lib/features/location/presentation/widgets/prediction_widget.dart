import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/features/location/presentation/cubits/coordinates_cubit.dart';

import '../../../../core/constants/app_routes.dart';
import '../cubits/prediction_cubit.dart';

class PredictionWidget extends StatelessWidget {
  const PredictionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final coordinatesCubit = context.read<CoordinatesCubit>();
    return BlocBuilder<PredictionCubit, PredictionState>(
      builder: (context, state) {
        if (state is PredictionStateLoading) {
          return CircularProgressIndicator();
        }
        if (state is PredictionStateError) {
          return Text(state.message);
        }
        if (state is PredictionStateDone) {
          final predictions = state.predictions;
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: predictions.length,
            itemBuilder: (context, index) {
              final prediction = predictions[index];
              String title = prediction.description.split(',')[0];
              String subtitle = prediction.description
                  .replaceFirst(title, '')
                  .replaceFirst(',', '')
                  .trim();
              return GestureDetector(
                onTap: () async {
                  await coordinatesCubit
                      .getCoordinatesByPlaceID(prediction.placeId);
                  final coordinates = coordinatesCubit.state.props.first;

                  await context.push(AppRoutes.setLocation, extra: coordinates);
                },
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  title: Text(
                    title,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    subtitle,
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              );
            },
          );
        }
        return SizedBox();
      },
    );
  }
}
