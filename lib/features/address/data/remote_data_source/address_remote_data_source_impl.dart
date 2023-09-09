import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:simply_sell/core/config/hasura_service.dart';
import 'package:simply_sell/features/address/data/address_graphql_queries.dart';
import 'package:simply_sell/features/address/data/model/address_model.dart';
import 'package:simply_sell/features/address/data/remote_data_source/address_remote_data_source.dart';

class AddressRemoteDataSourceImpl extends AddressRemoteDataSource {
  final HasuraService hasuraService;

  AddressRemoteDataSourceImpl({required this.hasuraService});
  @override
  Future<void> crateAddress(AddressModel addressEntity) {
    // TODO: implement crateAddress
    throw UnimplementedError();
  }

  @override
  Stream<List<AddressModel>> getAddress() {
    final addressStream = hasuraService.client
        .subscribe(SubscriptionOptions(
            document: gql(AddressGraphQLQueries.addressSubscription)))
        .asyncExpand((result) {
      final addressData = result.data?['address'] as List<dynamic>;
      print(addressData);
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
