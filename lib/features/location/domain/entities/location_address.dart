import 'package:equatable/equatable.dart';

class LocationAddressEntity extends Equatable {
  final String addressTitle;
  final String addressSubtitle;
  LocationAddressEntity(
      {required this.addressTitle, required this.addressSubtitle});

  @override
  List<Object?> get props => [
        addressTitle,
        addressSubtitle,
      ];
}
