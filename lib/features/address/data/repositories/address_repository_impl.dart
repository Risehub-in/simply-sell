import 'package:simply_sell/features/address/data/model/address_model.dart';
import 'package:simply_sell/features/address/data/remote_data_source/address_remote_data_source.dart';
import 'package:simply_sell/features/address/domain/entity/address_entity.dart';
import 'package:simply_sell/features/address/domain/repositories/address_repository.dart';

class AddressRepositoryImpl extends AddressRepository {
  final AddressRemoteDataSource addressRemoteDataSource;

  AddressRepositoryImpl({required this.addressRemoteDataSource});
  @override
  Future<int> addAddress(AddressEntity addressEntity) async {
    return addressRemoteDataSource.addAddress(AddressModel(
      userUid: addressEntity.userUid,
      areaLocality: addressEntity.areaLocality,
      flatFloorBldg: addressEntity.flatFloorBldg,
      latitude: addressEntity.latitude,
      longitude: addressEntity.longitude,
      addressType: addressEntity.addressType,
      locationAddress: addressEntity.locationAddress,
    ));
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
