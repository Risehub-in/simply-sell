import 'package:simply_sell/features/address/domain/entity/address_entity.dart';
import 'package:simply_sell/features/address/domain/repositories/address_repository.dart';

class AddAddressUsecase {
  final AddressRepository addressRepository;

  AddAddressUsecase({required this.addressRepository});

  Future<void> call(AddressEntity addressEntity) =>
      addressRepository.addAddress(addressEntity);
}
