import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/features/address/presentation/cubit/address_cubit.dart';
import 'package:simply_sell/features/location/domain/entities/coordinates_entity.dart';
import 'package:simply_sell/features/location/domain/entities/location_address.dart';
import 'package:simply_sell/features/location/presentation/cubits/get_location_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/prediction_cubit.dart';
import '../../../address/domain/entity/address_entity.dart';
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

class AddressListWidget extends StatelessWidget {
  const AddressListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddressCubit, AddressState>(
      builder: (context, state) {
        if (state is AddressStateLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is AddressStateError) {
          return Text(state.message);
        }
        if (state is AddressStateDone) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Saved Address'),
              SizedBox(height: 6),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: state.addresses.length,
                  itemBuilder: (context, index) {
                    final address = state.addresses[index];
                    return GestureDetector(
                      onTap: () =>
                          setLocationAndClearPredictionList(context, address),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20,
                          ),
                          SizedBox(width: 4),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${address.addressType}',
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  '${address.flatFloorBldg}. ${address.areaLocality}. ${address.locationAddress}',
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          );
        }
        return SizedBox();
      },
    );
  }

  void setLocationAndClearPredictionList(
      BuildContext context, AddressEntity address) {
    context.read<GetLocationCubit>().getLocationFromSearchLocationPage(
          LocationAddressEntity(
              addressTitle: address.addressType,
              addressSubtitle:
                  '${address.flatFloorBldg}. ${address.areaLocality}. ${address.locationAddress}'),
          CoordinatesEntity(
            latitude: address.latitude,
            longitude: address.longitude,
          ),
          true,
          address.id!,
        );
    context.read<PredictionCubit>().clearPredictions();
    context.pop();
  }
}
