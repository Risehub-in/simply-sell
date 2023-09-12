import 'package:flutter/material.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/app_defaults.dart';
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
              ElevatedButton(onPressed: () {}, child: Text('Proceed To Pay'))
            ],
          )
        ],
      ),
    );
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
