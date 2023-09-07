import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/features/location/domain/entities/coordinates_entity.dart';
import 'package:simply_sell/features/location/domain/entities/location_address.dart';
import 'package:simply_sell/features/location/presentation/cubits/coordinates_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/set_location_cubit.dart';

import '../../../../core/constants/app_routes.dart';
import '../cubits/coverage_cubit.dart';
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

              return GestureDetector(
                onTap: () async {
                  await coordinatesCubit
                      .getCoordinatesByPlaceID(prediction.placeId);
                  final coordinates =
                      coordinatesCubit.state.props.first as CoordinatesEntity;
                  context.read<CoverageCubit>().isInDeliveryRadius(
                      coordinates.latitude, coordinates.longitude);
                  context.read<SetLocationCubit>().setAddressFromPrediction(
                        LocationAddressEntity(
                            addressTitle: prediction.mainText,
                            addressSubtitle: prediction.secondaryText),
                      );
                  await context.push(
                    AppRoutes.setLocation,
                    extra: coordinates,
                  );
                },
                child: ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  title: Text(
                    prediction.mainText,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    prediction.secondaryText,
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
