import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:simply_sell/features/address/domain/entity/address_entity.dart';
import 'package:simply_sell/features/address/domain/usecases/add_address_usecase.dart';
import 'package:simply_sell/features/address/domain/usecases/stream_address_list_usecase.dart';

part 'address_state.dart';

class AddressCubit extends Cubit<AddressState> {
  final StreamAddressesUsecase streamAddressesUsecase;
  final AddAddressUsecase addAddressUsecase;
  AddressCubit({
    required this.streamAddressesUsecase,
    required this.addAddressUsecase,
  }) : super(AddressInitial()) {
    streamAddresses();
  }

  streamAddresses() {
    streamAddressesUsecase.call().listen((addresses) {
      emit(AddressStateLoading());
      emit(AddressStateDone(addresses: addresses));
    });
  }

  Future<int> addAddress(AddressEntity addressEntity) async {
    try {
      final addressId = await addAddressUsecase.call(addressEntity);
      return addressId;
    } catch (e) {
      print(e.toString());
      rethrow;
    }
  }
}
