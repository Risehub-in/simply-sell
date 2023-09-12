import '../model/address_model.dart';

abstract class AddressRemoteDataSource {
  Stream<List<AddressModel>> getAddress();
  Future<int> addAddress(AddressModel addressEntity);
  Future<void> updateAddress(AddressModel addressEntity);
}
