import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';
import 'package:simply_sell/features/location/presentation/cubits/coverage_cubit.dart';
import '../../../location/presentation/cubits/get_location_cubit.dart';

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
            onPressed: () {},
            icon: Icon(Icons.person),
          )
        ],
      ),
      body: BlocBuilder<CoverageCubit, CoverageState>(
        builder: (context, state) {
          if (state is CoverageStateLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is CoverageStateDone) {
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

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetLocationCubit, GetLocationState>(
      builder: (context, state) {
        if (state is GetLocationStateLoading) {
          return Text('Locating...');
        }
        if (state is GetLocationStateError) {
          return Text(state.message);
        }
        if (state is GetLocationStateDone) {
          return GestureDetector(
            onTap: () => context.push(AppRoutes.searchLocation),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(width: 4),
                Flexible(
                  child: Text(
                    state.locationAddress.addressTitle,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}
