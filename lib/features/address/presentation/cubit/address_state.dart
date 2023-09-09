part of 'address_cubit.dart';

sealed class AddressState extends Equatable {
  const AddressState();

  @override
  List<Object> get props => [];
}

final class AddressInitial extends AddressState {}

final class AddressStateLoading extends AddressState {}

final class AddressStateDone extends AddressState {
  final List<AddressEntity> addresses;

  AddressStateDone({required this.addresses});

  @override
  List<Object> get props => [addresses];
}

final class AddressStateError extends AddressState {
  final String message;

  AddressStateError({required this.message});

  @override
  List<Object> get props => [message];
}
