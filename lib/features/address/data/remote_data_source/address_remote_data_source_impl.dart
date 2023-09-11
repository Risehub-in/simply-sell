import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:simply_sell/core/config/hasura_service.dart';
import 'package:simply_sell/features/address/data/address_graphql_queries.dart';
import 'package:simply_sell/features/address/data/model/address_model.dart';
import 'package:simply_sell/features/address/data/remote_data_source/address_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AddressRemoteDataSourceImpl extends AddressRemoteDataSource {
  final HasuraService hasuraService;
  final Supabase supabase;
  AddressRemoteDataSourceImpl(
      {required this.hasuraService, required this.supabase});
  @override
  Future<void> addAddress(AddressModel addressEntity) async {
    try {
      final result = await hasuraService.client.mutate(
        MutationOptions(
            document: gql(AddressGraphQLQueries.createAddress),
            variables: {
              'flat_floor_bldg': addressEntity.flatFloorBldg,
              'area_locality': addressEntity.areaLocality,
              'landmark': addressEntity.landmark,
              'latitude': addressEntity.latitude,
              'longitude': addressEntity.longitude,
              'address_type': addressEntity.addressType,
              'location_address': addressEntity.locationAddress,
              'user_id': supabase.client.auth.currentSession?.user.id,
            }),
      );
      if (!result.hasException) {
        print(result.data);
      } else {
        print(result.exception.toString());
      }
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }

  @override
  Stream<List<AddressModel>> getAddress() {
    final addressStream = hasuraService.client
        .subscribe(SubscriptionOptions(
            document: gql(AddressGraphQLQueries.addressSubscription)))
        .asyncExpand((result) {
      final addressData = result.data?['address'] as List<dynamic>;
      final List<AddressModel> addresses =
          addressData.map((address) => AddressModel.fromJson(address)).toList();
      return Stream.value(addresses);
    }).handleError((error) {
      print(error.toString());
    });
    return addressStream;
  }

  @override
  Future<void> updateAddress(AddressModel addressEntity) {
    // TODO: implement updateAddress
    throw UnimplementedError();
  }
}
