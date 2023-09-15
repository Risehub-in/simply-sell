import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_routes.dart';
import '../../../location/presentation/cubits/get_location_cubit.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(width: 4),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            state.locationAddress.addressTitle,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                      Text(
                        state.locationAddress.addressSubtitle,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
        return SizedBox();
      },
    );
  }
}
