import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/get_location_cubit.dart';
import 'package:simply_sell/features/order/domain/entities/order_entity.dart';
import 'package:simply_sell/features/order/domain/entities/order_item_entity.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_defaults.dart';
import '../../../../order/presentation/cubit/order_cubit.dart';
import '../cart_page_address_modal_bottom_sheet.dart';

class UserAddressSelected extends StatelessWidget {
  final String addressTitle;
  final String addressSubTitle;
  final String addressType;
  const UserAddressSelected({
    super.key,
    required this.addressTitle,
    required this.addressSubTitle,
    required this.addressType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 122,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Delivery to',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(width: 4),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.scaffoldColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Text(
                  addressType,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () => _displaySelectAddressBottomSheet(context),
                child: Text(
                  'Change',
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: AppColors.primary),
                ),
              )
            ],
          ),
          SizedBox(height: 4),
          Text(
            addressSubTitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 6),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    'To Pay',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    '${AppDefaults.currency} 310',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(color: AppColors.primary),
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () => _createOrder(context),
                child: Text('Proceed To Pay'),
              )
            ],
          )
        ],
      ),
    );
  }

  Future<void> _createOrder(BuildContext context) async {
    final getLocationState = context.read<GetLocationCubit>().state;
    final cartState = context.read<CartCubit>().state;
    String? deliveryAddress;
    double? paymentAmount;
    double? customerLatitude;
    double? customerLongitude;
    List<OrderItemEntity> orderItems = [];

    if (cartState is CartStateDone) {
      if (cartState.cartItems.length > 0) {
        double cartItemTotal = 0;
        cartState.cartItems.forEach((cartItem) {
          orderItems.add(
            OrderItemEntity(
              itemQuantity: cartItem.cartQuantity,
              variantId: cartItem.variantId,
              price: cartItem.price,
            ),
          );
          cartItemTotal += cartItem.price * cartItem.cartQuantity;
          paymentAmount = cartItemTotal;
        });
      }
    }

    if (getLocationState is GetLocationStateDone) {
      deliveryAddress = '${getLocationState.locationAddress.addressSubtitle}';
      customerLatitude = getLocationState.coordinates.latitude;
      customerLongitude = getLocationState.coordinates.longitude;
    }
    print(orderItems);
    if (orderItems.length > 0) {
      context.read<OrderCubit>().createOrder(
            OrderEntity(
              deliveryAddress: deliveryAddress!,
              deliveryFee: 50,
              customerLatitude: customerLatitude!,
              customerLongitude: customerLongitude!,
              orderStatus: 'pending',
              paymentAmount: paymentAmount!,
              orderItems: orderItems,
            ),
          );
    }
  }

  Future _displaySelectAddressBottomSheet(BuildContext context) async {
    return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(24),
        ),
      ),
      context: context,
      builder: (context) {
        return CartPageAddressModalBottomSheet();
      },
    );
  }
}
