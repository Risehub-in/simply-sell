import '../model/address_model.dart';

abstract class AddressRemoteDataSource {
  Stream<List<AddressModel>> getAddress();
  Future<void> addAddress(AddressModel addressEntity);
  Future<void> updateAddress(AddressModel addressEntity);
}
