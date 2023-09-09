import 'package:simply_sell/features/address/data/model/address_model.dart';
import 'package:simply_sell/features/address/data/remote_data_source/address_remote_data_source.dart';
import 'package:simply_sell/features/address/domain/entity/address_entity.dart';
import 'package:simply_sell/features/address/domain/repositories/address_repository.dart';

class AddressRepositoryImpl extends AddressRepository {
  final AddressRemoteDataSource addressRemoteDataSource;

  AddressRepositoryImpl({required this.addressRemoteDataSource});
  @override
  Future<void> crateAddress(AddressEntity addressEntity) {
    // TODO: implement crateAddress
    throw UnimplementedError();
  }

  @override
  Stream<List<AddressModel>> getAddress() {
    return addressRemoteDataSource.getAddress();
  }

  @override
  Future<void> updateAddress(AddressEntity addressEntity) {
    // TODO: implement updateAddress
    throw UnimplementedError();
  }
}
