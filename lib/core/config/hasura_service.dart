import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:logger/logger.dart';

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

  WebSocketLink get _webSocketLink => WebSocketLink(
        _hasuraUrl.replaceFirst(
            'https', 'wss'), // Use wss:// for secure WebSocket connection
        config: SocketClientConfig(
            autoReconnect: true,
            inactivityTimeout: Duration(seconds: 30),
            headers: {
              'Authorization':
                  'Bearer ${supabase.client.auth.currentSession?.accessToken}'
            }),
      );

  GraphQLClient get client => GraphQLClient(
        link: Link.split(
          (request) => request.isSubscription,
          LoggingLink(_webSocketLink, Logger()), // Use Logger here
          LoggingLink(_link, Logger()), // Use Logger here,
        ),
        cache: GraphQLCache(),
      );
}

class LoggingLink extends Link {
  final Link _innerLink;
  final Logger _logger;

  LoggingLink(this._innerLink, this._logger);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    final stream = _innerLink.request(request, forward);

    final query = request.toString();
    // final operationName = request.operation.operationName.toString();
    final variables = request.variables.toString();

    // final requestString = '''
    //   GraphQL Request: $query
    //   Operation Name: $operationName
    //   Query: $query
    //   Variables: $variables
    // ''';

    final requestString =
        '''
      Query: $query
      Variables: $variables
    ''';

    _logger.i(requestString);
    return stream;
  }
}
