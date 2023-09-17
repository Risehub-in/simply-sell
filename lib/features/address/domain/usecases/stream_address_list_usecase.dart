import 'package:simply_sell/features/address/domain/entity/address_entity.dart';
import 'package:simply_sell/features/address/domain/repositories/address_repository.dart';

class StreamAddressesUsecase {
  final AddressRepository addressRepository;

  StreamAddressesUsecase({required this.addressRepository});

  Stream<List<AddressEntity>> call() => addressRepository.getAddress();
}
