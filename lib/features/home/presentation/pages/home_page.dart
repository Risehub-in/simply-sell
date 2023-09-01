import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:simply_sell/core/constants/app_routes.dart';
import '../../../location/presentation/cubits/location_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<LocationCubit>().getLocationAddress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BlocBuilder<LocationCubit, LocationState>(
          builder: (context, state) {
            if (state is LocationStateLoading) {
              return Text('Locating...');
            }
            if (state is LocationStateError) {
              return Text(state.message!);
            }
            if (state is LocationStateDone) {
              return GestureDetector(
                onTap: () => context.push(AppRoutes.searchLocation),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(width: 4),
                    Flexible(
                      child: Text(
                        state.location.address,
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
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          )
        ],
      ),
    );
  }
}
