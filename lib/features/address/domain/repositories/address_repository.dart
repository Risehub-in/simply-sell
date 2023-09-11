import 'package:simply_sell/features/address/domain/entity/address_entity.dart';

abstract class AddressRepository {
  Stream<List<AddressEntity>> getAddress();
  Future<void> addAddress(AddressEntity addressEntity);
  Future<void> updateAddress(AddressEntity addressEntity);
}
