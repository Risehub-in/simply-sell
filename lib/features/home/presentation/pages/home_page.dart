import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';
import 'package:simply_sell/features/location/presentation/cubits/coverage_cubit.dart';
import 'package:simply_sell/features/location/presentation/cubits/get_location_cubit.dart';
import '../widgets/home_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: HomeAppBar(),
        actions: [
          IconButton(
            onPressed: () {
              context.push(AppRoutes.addAddress);
            },
            icon: Icon(Icons.person),
          )
        ],
      ),
      body: BlocBuilder<GetLocationCubit, GetLocationState>(
        builder: (context, state) {
          if (state is CoverageStateLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is GetLocationStateDone) {
            return Center(
              child: Text(
                state.isUserInDeliveryRadius
                    ? 'In Delivery Radius'
                    : 'Out of Delivery Radius',
              ),
            );
          }
          return SizedBox();
        },
      ),
    );
  }
}
