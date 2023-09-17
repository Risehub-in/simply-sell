import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../address/domain/entity/address_entity.dart';
import '../../../address/presentation/cubit/address_cubit.dart';
import '../../domain/entities/coordinates_entity.dart';
import '../../domain/entities/location_address.dart';
import '../cubits/get_location_cubit.dart';
import '../cubits/prediction_cubit.dart';

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
                      child: AddressListTile(address: address),
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
    context.read<GetLocationCubit>().getLocationFromAddressList(
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
          address.addressType,
        );
    context.read<PredictionCubit>().clearPredictions();
    context.pop();
  }
}

class AddressListTile extends StatelessWidget {
  const AddressListTile({
    super.key,
    required this.address,
  });

  final AddressEntity address;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text(
                '${address.flatFloorBldg}. ${address.areaLocality}. ${address.locationAddress}',
                maxLines: 2,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
