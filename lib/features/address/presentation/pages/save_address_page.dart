import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_colors.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:simply_sell/features/address/domain/entity/address_entity.dart';
import 'package:simply_sell/features/address/presentation/cubit/address_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/get_location_cubit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:simply_sell/features/location/presentation/cubits/set_location_cubit.dart';

import '../widgets/address_page_google_map.dart';
import '../widgets/address_page_location_info.dart';
import '../widgets/address_page_text_form_field.dart';

class SaveAddressPage extends StatefulWidget {
  const SaveAddressPage({super.key});

  @override
  State<SaveAddressPage> createState() => _SaveAddressPageState();
}

class _SaveAddressPageState extends State<SaveAddressPage> {
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
              SaveAddressPageForm()
            ],
          ),
        ),
      ),
    );
  }
}

class SaveAddressPageForm extends StatefulWidget {
  const SaveAddressPageForm({super.key});

  @override
  State<SaveAddressPageForm> createState() => _SaveAddressPageFormState();
}

class _SaveAddressPageFormState extends State<SaveAddressPageForm> {
  int? selectedIndex;
  List<String> addressTypeChips = ['Home', 'Work', 'Other'];
  String? addressType;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _flatFloorBldgController = TextEditingController();
  TextEditingController _areaLocalityController = TextEditingController();
  TextEditingController _landmarkController = TextEditingController();
  TextEditingController _otherAddressTypeController = TextEditingController();

  final requiredValidator =
      RequiredValidator(errorText: 'this field is required');

  @override
  void dispose() {
    super.dispose();
    _flatFloorBldgController.dispose();
    _areaLocalityController.dispose();
    _landmarkController.dispose();
    _otherAddressTypeController.dispose();
  }

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
              validator: requiredValidator,
              controller: _flatFloorBldgController,
              labelText: 'Flat / Floor / Building Name*',
            ),
            SizedBox(height: 18),
            AddAddressPageTextFormField(
              validator: requiredValidator,
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
            SizedBox(height: 12),
            SizedBox(
              height: 46,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _saveAddress,
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

  Future<void> _saveAddress() async {
    try {
      final setLocationState = context.read<SetLocationCubit>().state;
      if (_formKey.currentState!.validate()) {
        if (addressType == null) {
          Fluttertoast.showToast(msg: 'Select address type');
        } else {
          if (setLocationState is SetLocationStateDone) {
            print(setLocationState.locationAddress.addressSubtitle);
            int addressId = await context.read<AddressCubit>().addAddress(
                  AddressEntity(
                    locationAddress:
                        setLocationState.locationAddress.addressSubtitle,
                    areaLocality: _areaLocalityController.text,
                    flatFloorBldg: _flatFloorBldgController.text,
                    latitude: setLocationState.coordinates.latitude,
                    longitude: setLocationState.coordinates.longitude,
                    landmark: _landmarkController.text,
                    addressType: addressType!,
                  ),
                );
            context.read<GetLocationCubit>().getLocationFromAddressList(
                setLocationState.locationAddress,
                setLocationState.coordinates,
                true,
                addressId,
                addressType!);
            context.pop();
          }
        }
      }
    } catch (e) {
      print(e.toString());
    }
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
