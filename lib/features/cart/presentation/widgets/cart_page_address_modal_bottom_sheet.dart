import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_colors.dart';
import 'package:simply_sell/core/constants/app_routes.dart';

import '../../../address/domain/entity/address_entity.dart';
import '../../../address/presentation/cubit/address_cubit.dart';
import '../../../location/domain/entities/coordinates_entity.dart';
import '../../../location/domain/entities/location_address.dart';
import '../../../location/presentation/cubits/get_location_cubit.dart';

class CartPageAddressModalBottomSheet extends StatelessWidget {
  const CartPageAddressModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.75,
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 8),
                Text(
                  'Select Delivery Address',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            Divider(thickness: 0.3),
            BlocBuilder<GetLocationCubit, GetLocationState>(
              builder: (context, state) {
                if (state is GetLocationStateDone) {
                  return TextButton.icon(
                    onPressed: () {
                      context.push(AppRoutes.newAddress,
                          extra: state.coordinates);
                      context.pop();
                    },
                    icon: Icon(Icons.add_circle_outline_rounded),
                    label: Text(
                      'Add New Address',
                    ),
                  );
                }
                return SizedBox();
              },
            ),
            Divider(thickness: 0.3),
            Text(
              'Saved Address',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Divider(thickness: 0.3),
            CartAddressListWidget(),
          ],
        ),
      ),
    );
  }
}

class CartAddressListWidget extends StatelessWidget {
  const CartAddressListWidget({super.key});

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
              SizedBox(height: 6),
              ListView.separated(
                  separatorBuilder: (context, index) => Divider(thickness: 0.3),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: state.addresses.length,
                  itemBuilder: (context, index) {
                    final address = state.addresses[index];
                    return CartAddressListTile(address: address);
                  }),
            ],
          );
        }
        return SizedBox();
      },
    );
  }
}

class CartAddressListTile extends StatelessWidget {
  const CartAddressListTile({
    super.key,
    required this.address,
  });

  final AddressEntity address;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onTap: () => setLocation(context, address),
      contentPadding: EdgeInsets.all(0),
      leading: Icon(
        Icons.location_on_rounded,
        color: AppColors.primary,
      ),
      title: Text(
        address.addressType,
        style: Theme.of(context).textTheme.titleSmall,
      ),
      subtitle: Text(
          '${address.flatFloorBldg}. ${address.areaLocality}. ${address.locationAddress}'),
    );
  }

  void setLocation(BuildContext context, AddressEntity address) {
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
        address.addressType);
    context.pop();
  }
}
