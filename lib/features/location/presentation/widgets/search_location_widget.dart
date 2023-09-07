import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simply_sell/core/constants/app_colors.dart';
import 'package:uuid/uuid.dart';

import '../cubits/prediction_cubit.dart';

class SearchLocation extends StatefulWidget {
  const SearchLocation({
    super.key,
  });

  @override
  State<SearchLocation> createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  TextEditingController _locationSearchController = TextEditingController();
  var uuid = Uuid();
  String? _uuidToken;

  @override
  void initState() {
    _uuidToken = uuid.v4();
    super.initState();
  }

  Future<void> getSearchPrediction(String input) async {
    print('input : $input');
    await context
        .read<PredictionCubit>()
        .searchAddressByKeyword(input, _uuidToken!);
  }

  @override
  void dispose() {
    _locationSearchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _locationSearchController,
      onChanged: (value) async {
        if (value.length > 3) {
          await getSearchPrediction(value);
        }
      },
      decoration: InputDecoration(
        hintText: 'Try Agarwal Market, Lokhandwala',
        suffixIcon: IconButton(
          color: AppColors.textColor,
          iconSize: 20,
          onPressed: () {
            _locationSearchController.clear();
          },
          icon: Icon(
            Icons.close,
          ),
        ),
      ),
    );
  }
}
