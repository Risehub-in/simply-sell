import 'package:flutter/material.dart';
import 'package:simply_sell/core/constants/app_colors.dart';

import '../widgets/address_page_google_map.dart';
import '../widgets/address_page_location_info.dart';
import '../widgets/address_page_text_form_field.dart';

class AddAddressPage extends StatefulWidget {
  const AddAddressPage({super.key});

  @override
  State<AddAddressPage> createState() => _AddAddressPageState();
}

class _AddAddressPageState extends State<AddAddressPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AddressPageGoogleMap(),
              SizedBox(height: 18),
              AddressPageLocationInfoWidget(),
              SizedBox(height: 18),
              AddressPageForm()
            ],
          ),
        ),
      ),
    );
  }
}

class AddressPageForm extends StatefulWidget {
  const AddressPageForm({super.key});

  @override
  State<AddressPageForm> createState() => _AddressPageFormState();
}

class _AddressPageFormState extends State<AddressPageForm> {
  int? selectedIndex;
  List<String> addressTypeChips = ['Home', 'Work', 'Other'];
  String? addressType;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _flatFloorBldgController = TextEditingController();
  TextEditingController _areaLocalityController = TextEditingController();
  TextEditingController _landmarkController = TextEditingController();
  TextEditingController _otherAddressTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddAddressPageTextFormField(
              controller: _flatFloorBldgController,
              labelText: 'Flat / Floor / Building Name*',
            ),
            SizedBox(height: 18),
            AddAddressPageTextFormField(
              controller: _areaLocalityController,
              labelText: 'Area / Locality*',
            ),
            SizedBox(height: 18),
            AddAddressPageTextFormField(
              controller: _landmarkController,
              textInputAction: TextInputAction.done,
              labelText: 'Landmark (Optional)',
            ),
            SizedBox(height: 18),
            Text('Save address as'),
            buildChoiceChips(),
            SizedBox(height: 18),
            if (selectedIndex == 2)
              AddAddressPageTextFormField(
                onChanged: (value) {
                  addressType = value;
                  print(value);
                },
                controller: _otherAddressTypeController,
                textInputAction: TextInputAction.done,
                labelText: 'Enter your own label',
              ),
            SizedBox(height: 18),
            SizedBox(
              height: 46,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Save Address',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildChoiceChips() {
    return Row(
      children: [
        ...List.generate(
          addressTypeChips.length,
          (index) => Row(
            children: [
              ChoiceChip(
                selectedColor: AppColors.primary,
                labelStyle: TextStyle(
                  color: selectedIndex == index ? Colors.white : Colors.black87,
                  fontWeight: FontWeight.w600,
                ),
                selected: selectedIndex == index,
                label: Text(
                  addressTypeChips[index],
                ),
                onSelected: (bool selected) {
                  setState(() {
                    if (selected) {
                      selectedIndex = index;
                      print(index);
                      addressType = addressTypeChips[index];
                      print(addressType);
                    }
                  });
                },
              ),
              SizedBox(width: 18),
            ],
          ),
        ),
      ],
    );
  }
}
