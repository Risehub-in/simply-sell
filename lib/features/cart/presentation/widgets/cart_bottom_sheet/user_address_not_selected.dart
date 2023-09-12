import 'package:flutter/material.dart';
import 'package:simply_sell/features/cart/presentation/widgets/cart_page_address_modal_bottom_sheet.dart';

class UserAddressNotSelected extends StatelessWidget {
  final String addressTitle;
  final String addressSubtitle;

  const UserAddressNotSelected({
    super.key,
    required this.addressSubtitle,
    required this.addressTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14),
      color: Colors.white,
      height: 140,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 14),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.location_on_outlined),
              SizedBox(width: 4),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'You seems to be in new location!',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      addressSubtitle,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text('Add Address'),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => _displayChangeAddressBottomSheet(context),
                child: Text('Select Address'),
              )
            ],
          )
        ],
      ),
    );
  }

  Future _displayChangeAddressBottomSheet(BuildContext context) async {
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
