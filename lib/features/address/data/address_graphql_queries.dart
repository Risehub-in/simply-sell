class AddressGraphQLQueries {
  static final createAddress = '''
mutation CreateAddress(
  \$area_locality: String!,
  \$flat_floor_bldg: String!,
  \$landmark: String!,
  \$latitude: float8!,
  \$longitude: float8!,
  \$user_id: uuid!,
  \$address_type: String!) {
  insert_address_one(object: {
    area_locality: \$area_locality,
    flat_floor_bldg: \$flat_floor_bldg,
    landmark: \$landmark,
    latitude: \$latitude,
    longitude: \$longitude,
    user_id: \$user_id,
    address_type: \$address_type
    }) {
    id
  }
}
''';

  static final addressSubscription = '''
  subscription AddressSubsription {
  address {
    address_type
    area_locality
    flat_floor_bldg
    id
    landmark
    latitude
    longitude
    user_id
  }
}
''';
}
