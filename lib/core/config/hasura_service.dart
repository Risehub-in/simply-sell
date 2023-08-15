import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HasuraService {
  final Supabase supabase;
  static final String _hasuraUrl =
      'https://quiet-tick-73.hasura.app/v1/graphql'; // Replace with your Hasura URL
  static final HttpLink _httpLink = HttpLink(_hasuraUrl);

  HasuraService({required this.supabase});

  AuthLink get _authLink => AuthLink(
        getToken: () async {
          final accessToken = supabase.client.auth.currentSession?.accessToken;
          return 'Bearer $accessToken';
        },
      );

  Link get _link => _authLink.concat(_httpLink);

  GraphQLClient get client => GraphQLClient(
        link: _link,
        cache: GraphQLCache(),
      );
}
