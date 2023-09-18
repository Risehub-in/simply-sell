import '../../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$GetOrders {
  Query$GetOrders({
    this.orders,
    this.$__typename = 'Query',
  });

  factory Query$GetOrders.fromJson(Map<String, dynamic> json) {
    final l$orders = json['orders'];
    final l$$__typename = json['__typename'];
    return Query$GetOrders(
      orders: l$orders == null
          ? null
          : Query$GetOrders$orders.fromJson((l$orders as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetOrders$orders? orders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders = orders;
    _resultData['orders'] = l$orders?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders = orders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orders,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetOrders) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orders = orders;
    final lOther$orders = other.orders;
    if (l$orders != lOther$orders) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetOrders on Query$GetOrders {
  CopyWith$Query$GetOrders<Query$GetOrders> get copyWith =>
      CopyWith$Query$GetOrders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetOrders<TRes> {
  factory CopyWith$Query$GetOrders(
    Query$GetOrders instance,
    TRes Function(Query$GetOrders) then,
  ) = _CopyWithImpl$Query$GetOrders;

  factory CopyWith$Query$GetOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrders;

  TRes call({
    Query$GetOrders$orders? orders,
    String? $__typename,
  });
  CopyWith$Query$GetOrders$orders<TRes> get orders;
}

class _CopyWithImpl$Query$GetOrders<TRes>
    implements CopyWith$Query$GetOrders<TRes> {
  _CopyWithImpl$Query$GetOrders(
    this._instance,
    this._then,
  );

  final Query$GetOrders _instance;

  final TRes Function(Query$GetOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetOrders(
        orders: orders == _undefined
            ? _instance.orders
            : (orders as Query$GetOrders$orders?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetOrders$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return local$orders == null
        ? CopyWith$Query$GetOrders$orders.stub(_then(_instance))
        : CopyWith$Query$GetOrders$orders(local$orders, (e) => call(orders: e));
  }
}

class _CopyWithStubImpl$Query$GetOrders<TRes>
    implements CopyWith$Query$GetOrders<TRes> {
  _CopyWithStubImpl$Query$GetOrders(this._res);

  TRes _res;

  call({
    Query$GetOrders$orders? orders,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetOrders$orders<TRes> get orders =>
      CopyWith$Query$GetOrders$orders.stub(_res);
}

const documentNodeQueryGetOrders = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetOrders'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'created_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_latitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_longitude'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'delivery_address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'delivery_fee'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'order_status'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'payment_amount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'payment_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$GetOrders _parserFn$Query$GetOrders(Map<String, dynamic> data) =>
    Query$GetOrders.fromJson(data);
typedef OnQueryComplete$Query$GetOrders = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetOrders?,
);

class Options$Query$GetOrders extends graphql.QueryOptions<Query$GetOrders> {
  Options$Query$GetOrders({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetOrders? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetOrders? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$GetOrders(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetOrders,
          parserFn: _parserFn$Query$GetOrders,
        );

  final OnQueryComplete$Query$GetOrders? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetOrders
    extends graphql.WatchQueryOptions<Query$GetOrders> {
  WatchOptions$Query$GetOrders({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetOrders? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryGetOrders,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetOrders,
        );
}

class FetchMoreOptions$Query$GetOrders extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetOrders({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetOrders,
        );
}

extension ClientExtension$Query$GetOrders on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetOrders>> query$GetOrders(
          [Options$Query$GetOrders? options]) async =>
      await this.query(options ?? Options$Query$GetOrders());
  graphql.ObservableQuery<Query$GetOrders> watchQuery$GetOrders(
          [WatchOptions$Query$GetOrders? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetOrders());
  void writeQuery$GetOrders({
    required Query$GetOrders data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryGetOrders)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetOrders? readQuery$GetOrders({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryGetOrders)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetOrders.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetOrders> useQuery$GetOrders(
        [Options$Query$GetOrders? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetOrders());
graphql.ObservableQuery<Query$GetOrders> useWatchQuery$GetOrders(
        [WatchOptions$Query$GetOrders? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetOrders());

class Query$GetOrders$Widget extends graphql_flutter.Query<Query$GetOrders> {
  Query$GetOrders$Widget({
    widgets.Key? key,
    Options$Query$GetOrders? options,
    required graphql_flutter.QueryBuilder<Query$GetOrders> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetOrders(),
          builder: builder,
        );
}

class Query$GetOrders$orders {
  Query$GetOrders$orders({
    this.created_at,
    required this.customer_latitude,
    required this.customer_longitude,
    required this.delivery_address,
    required this.delivery_fee,
    required this.id,
    required this.order_status,
    required this.payment_amount,
    required this.user_id,
    required this.payment_id,
    this.$__typename = 'Order',
  });

  factory Query$GetOrders$orders.fromJson(Map<String, dynamic> json) {
    final l$created_at = json['created_at'];
    final l$customer_latitude = json['customer_latitude'];
    final l$customer_longitude = json['customer_longitude'];
    final l$delivery_address = json['delivery_address'];
    final l$delivery_fee = json['delivery_fee'];
    final l$id = json['id'];
    final l$order_status = json['order_status'];
    final l$payment_amount = json['payment_amount'];
    final l$user_id = json['user_id'];
    final l$payment_id = json['payment_id'];
    final l$$__typename = json['__typename'];
    return Query$GetOrders$orders(
      created_at: (l$created_at as String?),
      customer_latitude: (l$customer_latitude as num).toDouble(),
      customer_longitude: (l$customer_longitude as num).toDouble(),
      delivery_address: (l$delivery_address as String),
      delivery_fee: (l$delivery_fee as num).toDouble(),
      id: (l$id as int),
      order_status: (l$order_status as String),
      payment_amount: (l$payment_amount as num).toDouble(),
      user_id: (l$user_id as String),
      payment_id: (l$payment_id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String? created_at;

  final double customer_latitude;

  final double customer_longitude;

  final String delivery_address;

  final double delivery_fee;

  final int id;

  final String order_status;

  final double payment_amount;

  final String user_id;

  final String payment_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$customer_latitude = customer_latitude;
    _resultData['customer_latitude'] = l$customer_latitude;
    final l$customer_longitude = customer_longitude;
    _resultData['customer_longitude'] = l$customer_longitude;
    final l$delivery_address = delivery_address;
    _resultData['delivery_address'] = l$delivery_address;
    final l$delivery_fee = delivery_fee;
    _resultData['delivery_fee'] = l$delivery_fee;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$order_status = order_status;
    _resultData['order_status'] = l$order_status;
    final l$payment_amount = payment_amount;
    _resultData['payment_amount'] = l$payment_amount;
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$payment_id = payment_id;
    _resultData['payment_id'] = l$payment_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$created_at = created_at;
    final l$customer_latitude = customer_latitude;
    final l$customer_longitude = customer_longitude;
    final l$delivery_address = delivery_address;
    final l$delivery_fee = delivery_fee;
    final l$id = id;
    final l$order_status = order_status;
    final l$payment_amount = payment_amount;
    final l$user_id = user_id;
    final l$payment_id = payment_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$created_at,
      l$customer_latitude,
      l$customer_longitude,
      l$delivery_address,
      l$delivery_fee,
      l$id,
      l$order_status,
      l$payment_amount,
      l$user_id,
      l$payment_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetOrders$orders) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
      return false;
    }
    final l$customer_latitude = customer_latitude;
    final lOther$customer_latitude = other.customer_latitude;
    if (l$customer_latitude != lOther$customer_latitude) {
      return false;
    }
    final l$customer_longitude = customer_longitude;
    final lOther$customer_longitude = other.customer_longitude;
    if (l$customer_longitude != lOther$customer_longitude) {
      return false;
    }
    final l$delivery_address = delivery_address;
    final lOther$delivery_address = other.delivery_address;
    if (l$delivery_address != lOther$delivery_address) {
      return false;
    }
    final l$delivery_fee = delivery_fee;
    final lOther$delivery_fee = other.delivery_fee;
    if (l$delivery_fee != lOther$delivery_fee) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$order_status = order_status;
    final lOther$order_status = other.order_status;
    if (l$order_status != lOther$order_status) {
      return false;
    }
    final l$payment_amount = payment_amount;
    final lOther$payment_amount = other.payment_amount;
    if (l$payment_amount != lOther$payment_amount) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$payment_id = payment_id;
    final lOther$payment_id = other.payment_id;
    if (l$payment_id != lOther$payment_id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$GetOrders$orders on Query$GetOrders$orders {
  CopyWith$Query$GetOrders$orders<Query$GetOrders$orders> get copyWith =>
      CopyWith$Query$GetOrders$orders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetOrders$orders<TRes> {
  factory CopyWith$Query$GetOrders$orders(
    Query$GetOrders$orders instance,
    TRes Function(Query$GetOrders$orders) then,
  ) = _CopyWithImpl$Query$GetOrders$orders;

  factory CopyWith$Query$GetOrders$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$GetOrders$orders;

  TRes call({
    String? created_at,
    double? customer_latitude,
    double? customer_longitude,
    String? delivery_address,
    double? delivery_fee,
    int? id,
    String? order_status,
    double? payment_amount,
    String? user_id,
    String? payment_id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetOrders$orders<TRes>
    implements CopyWith$Query$GetOrders$orders<TRes> {
  _CopyWithImpl$Query$GetOrders$orders(
    this._instance,
    this._then,
  );

  final Query$GetOrders$orders _instance;

  final TRes Function(Query$GetOrders$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? created_at = _undefined,
    Object? customer_latitude = _undefined,
    Object? customer_longitude = _undefined,
    Object? delivery_address = _undefined,
    Object? delivery_fee = _undefined,
    Object? id = _undefined,
    Object? order_status = _undefined,
    Object? payment_amount = _undefined,
    Object? user_id = _undefined,
    Object? payment_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetOrders$orders(
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
        customer_latitude:
            customer_latitude == _undefined || customer_latitude == null
                ? _instance.customer_latitude
                : (customer_latitude as double),
        customer_longitude:
            customer_longitude == _undefined || customer_longitude == null
                ? _instance.customer_longitude
                : (customer_longitude as double),
        delivery_address:
            delivery_address == _undefined || delivery_address == null
                ? _instance.delivery_address
                : (delivery_address as String),
        delivery_fee: delivery_fee == _undefined || delivery_fee == null
            ? _instance.delivery_fee
            : (delivery_fee as double),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        order_status: order_status == _undefined || order_status == null
            ? _instance.order_status
            : (order_status as String),
        payment_amount: payment_amount == _undefined || payment_amount == null
            ? _instance.payment_amount
            : (payment_amount as double),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        payment_id: payment_id == _undefined || payment_id == null
            ? _instance.payment_id
            : (payment_id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetOrders$orders<TRes>
    implements CopyWith$Query$GetOrders$orders<TRes> {
  _CopyWithStubImpl$Query$GetOrders$orders(this._res);

  TRes _res;

  call({
    String? created_at,
    double? customer_latitude,
    double? customer_longitude,
    String? delivery_address,
    double? delivery_fee,
    int? id,
    String? order_status,
    double? payment_amount,
    String? user_id,
    String? payment_id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateOrder {
  factory Variables$Mutation$CreateOrder({
    required double customer_latitude,
    required double customer_longitude,
    required String delivery_address,
    required int id,
    required double delivery_fee,
    required String order_status,
    required String user_id,
    required String payment_id,
    required double payment_amount,
    required List<Input$order_items_insert_input> order_items,
  }) =>
      Variables$Mutation$CreateOrder._({
        r'customer_latitude': customer_latitude,
        r'customer_longitude': customer_longitude,
        r'delivery_address': delivery_address,
        r'id': id,
        r'delivery_fee': delivery_fee,
        r'order_status': order_status,
        r'user_id': user_id,
        r'payment_id': payment_id,
        r'payment_amount': payment_amount,
        r'order_items': order_items,
      });

  Variables$Mutation$CreateOrder._(this._$data);

  factory Variables$Mutation$CreateOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$customer_latitude = data['customer_latitude'];
    result$data['customer_latitude'] = (l$customer_latitude as num).toDouble();
    final l$customer_longitude = data['customer_longitude'];
    result$data['customer_longitude'] =
        (l$customer_longitude as num).toDouble();
    final l$delivery_address = data['delivery_address'];
    result$data['delivery_address'] = (l$delivery_address as String);
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$delivery_fee = data['delivery_fee'];
    result$data['delivery_fee'] = (l$delivery_fee as num).toDouble();
    final l$order_status = data['order_status'];
    result$data['order_status'] = (l$order_status as String);
    final l$user_id = data['user_id'];
    result$data['user_id'] = (l$user_id as String);
    final l$payment_id = data['payment_id'];
    result$data['payment_id'] = (l$payment_id as String);
    final l$payment_amount = data['payment_amount'];
    result$data['payment_amount'] = (l$payment_amount as num).toDouble();
    final l$order_items = data['order_items'];
    result$data['order_items'] = (l$order_items as List<dynamic>)
        .map((e) => Input$order_items_insert_input.fromJson(
            (e as Map<String, dynamic>)))
        .toList();
    return Variables$Mutation$CreateOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  double get customer_latitude => (_$data['customer_latitude'] as double);
  double get customer_longitude => (_$data['customer_longitude'] as double);
  String get delivery_address => (_$data['delivery_address'] as String);
  int get id => (_$data['id'] as int);
  double get delivery_fee => (_$data['delivery_fee'] as double);
  String get order_status => (_$data['order_status'] as String);
  String get user_id => (_$data['user_id'] as String);
  String get payment_id => (_$data['payment_id'] as String);
  double get payment_amount => (_$data['payment_amount'] as double);
  List<Input$order_items_insert_input> get order_items =>
      (_$data['order_items'] as List<Input$order_items_insert_input>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$customer_latitude = customer_latitude;
    result$data['customer_latitude'] = l$customer_latitude;
    final l$customer_longitude = customer_longitude;
    result$data['customer_longitude'] = l$customer_longitude;
    final l$delivery_address = delivery_address;
    result$data['delivery_address'] = l$delivery_address;
    final l$id = id;
    result$data['id'] = l$id;
    final l$delivery_fee = delivery_fee;
    result$data['delivery_fee'] = l$delivery_fee;
    final l$order_status = order_status;
    result$data['order_status'] = l$order_status;
    final l$user_id = user_id;
    result$data['user_id'] = l$user_id;
    final l$payment_id = payment_id;
    result$data['payment_id'] = l$payment_id;
    final l$payment_amount = payment_amount;
    result$data['payment_amount'] = l$payment_amount;
    final l$order_items = order_items;
    result$data['order_items'] = l$order_items.map((e) => e.toJson()).toList();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreateOrder<Variables$Mutation$CreateOrder>
      get copyWith => CopyWith$Variables$Mutation$CreateOrder(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$CreateOrder) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$customer_latitude = customer_latitude;
    final lOther$customer_latitude = other.customer_latitude;
    if (l$customer_latitude != lOther$customer_latitude) {
      return false;
    }
    final l$customer_longitude = customer_longitude;
    final lOther$customer_longitude = other.customer_longitude;
    if (l$customer_longitude != lOther$customer_longitude) {
      return false;
    }
    final l$delivery_address = delivery_address;
    final lOther$delivery_address = other.delivery_address;
    if (l$delivery_address != lOther$delivery_address) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$delivery_fee = delivery_fee;
    final lOther$delivery_fee = other.delivery_fee;
    if (l$delivery_fee != lOther$delivery_fee) {
      return false;
    }
    final l$order_status = order_status;
    final lOther$order_status = other.order_status;
    if (l$order_status != lOther$order_status) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$payment_id = payment_id;
    final lOther$payment_id = other.payment_id;
    if (l$payment_id != lOther$payment_id) {
      return false;
    }
    final l$payment_amount = payment_amount;
    final lOther$payment_amount = other.payment_amount;
    if (l$payment_amount != lOther$payment_amount) {
      return false;
    }
    final l$order_items = order_items;
    final lOther$order_items = other.order_items;
    if (l$order_items.length != lOther$order_items.length) {
      return false;
    }
    for (int i = 0; i < l$order_items.length; i++) {
      final l$order_items$entry = l$order_items[i];
      final lOther$order_items$entry = lOther$order_items[i];
      if (l$order_items$entry != lOther$order_items$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$customer_latitude = customer_latitude;
    final l$customer_longitude = customer_longitude;
    final l$delivery_address = delivery_address;
    final l$id = id;
    final l$delivery_fee = delivery_fee;
    final l$order_status = order_status;
    final l$user_id = user_id;
    final l$payment_id = payment_id;
    final l$payment_amount = payment_amount;
    final l$order_items = order_items;
    return Object.hashAll([
      l$customer_latitude,
      l$customer_longitude,
      l$delivery_address,
      l$id,
      l$delivery_fee,
      l$order_status,
      l$user_id,
      l$payment_id,
      l$payment_amount,
      Object.hashAll(l$order_items.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$CreateOrder<TRes> {
  factory CopyWith$Variables$Mutation$CreateOrder(
    Variables$Mutation$CreateOrder instance,
    TRes Function(Variables$Mutation$CreateOrder) then,
  ) = _CopyWithImpl$Variables$Mutation$CreateOrder;

  factory CopyWith$Variables$Mutation$CreateOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreateOrder;

  TRes call({
    double? customer_latitude,
    double? customer_longitude,
    String? delivery_address,
    int? id,
    double? delivery_fee,
    String? order_status,
    String? user_id,
    String? payment_id,
    double? payment_amount,
    List<Input$order_items_insert_input>? order_items,
  });
}

class _CopyWithImpl$Variables$Mutation$CreateOrder<TRes>
    implements CopyWith$Variables$Mutation$CreateOrder<TRes> {
  _CopyWithImpl$Variables$Mutation$CreateOrder(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreateOrder _instance;

  final TRes Function(Variables$Mutation$CreateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? customer_latitude = _undefined,
    Object? customer_longitude = _undefined,
    Object? delivery_address = _undefined,
    Object? id = _undefined,
    Object? delivery_fee = _undefined,
    Object? order_status = _undefined,
    Object? user_id = _undefined,
    Object? payment_id = _undefined,
    Object? payment_amount = _undefined,
    Object? order_items = _undefined,
  }) =>
      _then(Variables$Mutation$CreateOrder._({
        ..._instance._$data,
        if (customer_latitude != _undefined && customer_latitude != null)
          'customer_latitude': (customer_latitude as double),
        if (customer_longitude != _undefined && customer_longitude != null)
          'customer_longitude': (customer_longitude as double),
        if (delivery_address != _undefined && delivery_address != null)
          'delivery_address': (delivery_address as String),
        if (id != _undefined && id != null) 'id': (id as int),
        if (delivery_fee != _undefined && delivery_fee != null)
          'delivery_fee': (delivery_fee as double),
        if (order_status != _undefined && order_status != null)
          'order_status': (order_status as String),
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as String),
        if (payment_id != _undefined && payment_id != null)
          'payment_id': (payment_id as String),
        if (payment_amount != _undefined && payment_amount != null)
          'payment_amount': (payment_amount as double),
        if (order_items != _undefined && order_items != null)
          'order_items': (order_items as List<Input$order_items_insert_input>),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreateOrder<TRes>
    implements CopyWith$Variables$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreateOrder(this._res);

  TRes _res;

  call({
    double? customer_latitude,
    double? customer_longitude,
    String? delivery_address,
    int? id,
    double? delivery_fee,
    String? order_status,
    String? user_id,
    String? payment_id,
    double? payment_amount,
    List<Input$order_items_insert_input>? order_items,
  }) =>
      _res;
}

class Mutation$CreateOrder {
  Mutation$CreateOrder({
    required this.insert_orders,
    required this.insert_order_items,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOrder.fromJson(Map<String, dynamic> json) {
    final l$insert_orders = json['insert_orders'];
    final l$insert_order_items = json['insert_order_items'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder(
      insert_orders: Mutation$CreateOrder$insert_orders.fromJson(
          (l$insert_orders as Map<String, dynamic>)),
      insert_order_items: Mutation$CreateOrder$insert_order_items.fromJson(
          (l$insert_order_items as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOrder$insert_orders insert_orders;

  final Mutation$CreateOrder$insert_order_items insert_order_items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_orders = insert_orders;
    _resultData['insert_orders'] = l$insert_orders.toJson();
    final l$insert_order_items = insert_order_items;
    _resultData['insert_order_items'] = l$insert_order_items.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_orders = insert_orders;
    final l$insert_order_items = insert_order_items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_orders,
      l$insert_order_items,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOrder) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_orders = insert_orders;
    final lOther$insert_orders = other.insert_orders;
    if (l$insert_orders != lOther$insert_orders) {
      return false;
    }
    final l$insert_order_items = insert_order_items;
    final lOther$insert_order_items = other.insert_order_items;
    if (l$insert_order_items != lOther$insert_order_items) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOrder on Mutation$CreateOrder {
  CopyWith$Mutation$CreateOrder<Mutation$CreateOrder> get copyWith =>
      CopyWith$Mutation$CreateOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CreateOrder<TRes> {
  factory CopyWith$Mutation$CreateOrder(
    Mutation$CreateOrder instance,
    TRes Function(Mutation$CreateOrder) then,
  ) = _CopyWithImpl$Mutation$CreateOrder;

  factory CopyWith$Mutation$CreateOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder;

  TRes call({
    Mutation$CreateOrder$insert_orders? insert_orders,
    Mutation$CreateOrder$insert_order_items? insert_order_items,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrder$insert_orders<TRes> get insert_orders;
  CopyWith$Mutation$CreateOrder$insert_order_items<TRes> get insert_order_items;
}

class _CopyWithImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithImpl$Mutation$CreateOrder(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder _instance;

  final TRes Function(Mutation$CreateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_orders = _undefined,
    Object? insert_order_items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder(
        insert_orders: insert_orders == _undefined || insert_orders == null
            ? _instance.insert_orders
            : (insert_orders as Mutation$CreateOrder$insert_orders),
        insert_order_items: insert_order_items == _undefined ||
                insert_order_items == null
            ? _instance.insert_order_items
            : (insert_order_items as Mutation$CreateOrder$insert_order_items),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$CreateOrder$insert_orders<TRes> get insert_orders {
    final local$insert_orders = _instance.insert_orders;
    return CopyWith$Mutation$CreateOrder$insert_orders(
        local$insert_orders, (e) => call(insert_orders: e));
  }

  CopyWith$Mutation$CreateOrder$insert_order_items<TRes>
      get insert_order_items {
    final local$insert_order_items = _instance.insert_order_items;
    return CopyWith$Mutation$CreateOrder$insert_order_items(
        local$insert_order_items, (e) => call(insert_order_items: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder(this._res);

  TRes _res;

  call({
    Mutation$CreateOrder$insert_orders? insert_orders,
    Mutation$CreateOrder$insert_order_items? insert_order_items,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateOrder$insert_orders<TRes> get insert_orders =>
      CopyWith$Mutation$CreateOrder$insert_orders.stub(_res);
  CopyWith$Mutation$CreateOrder$insert_order_items<TRes>
      get insert_order_items =>
          CopyWith$Mutation$CreateOrder$insert_order_items.stub(_res);
}

const documentNodeMutationCreateOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOrder'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'customer_latitude')),
        type: NamedTypeNode(
          name: NameNode(value: 'float8'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'customer_longitude')),
        type: NamedTypeNode(
          name: NameNode(value: 'float8'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'delivery_address')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'bigint'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'delivery_fee')),
        type: NamedTypeNode(
          name: NameNode(value: 'numeric'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order_status')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'user_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'payment_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'payment_amount')),
        type: NamedTypeNode(
          name: NameNode(value: 'numeric'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'order_items')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'order_items_insert_input'),
            isNonNull: true,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_orders'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'customer_latitude'),
                value: VariableNode(name: NameNode(value: 'customer_latitude')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'customer_longitude'),
                value:
                    VariableNode(name: NameNode(value: 'customer_longitude')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'delivery_address'),
                value: VariableNode(name: NameNode(value: 'delivery_address')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'delivery_fee'),
                value: VariableNode(name: NameNode(value: 'delivery_fee')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'order_status'),
                value: VariableNode(name: NameNode(value: 'order_status')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'user_id'),
                value: VariableNode(name: NameNode(value: 'user_id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'payment_id'),
                value: VariableNode(name: NameNode(value: 'payment_id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'payment_amount'),
                value: VariableNode(name: NameNode(value: 'payment_amount')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: 'insert_order_items'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: VariableNode(name: NameNode(value: 'order_items')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'affected_rows'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$CreateOrder _parserFn$Mutation$CreateOrder(
        Map<String, dynamic> data) =>
    Mutation$CreateOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$CreateOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CreateOrder?,
);

class Options$Mutation$CreateOrder
    extends graphql.MutationOptions<Mutation$CreateOrder> {
  Options$Mutation$CreateOrder({
    String? operationName,
    required Variables$Mutation$CreateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrder>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrder,
          parserFn: _parserFn$Mutation$CreateOrder,
        );

  final OnMutationCompleted$Mutation$CreateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreateOrder
    extends graphql.WatchQueryOptions<Mutation$CreateOrder> {
  WatchOptions$Mutation$CreateOrder({
    String? operationName,
    required Variables$Mutation$CreateOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationCreateOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreateOrder,
        );
}

extension ClientExtension$Mutation$CreateOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreateOrder>> mutate$CreateOrder(
          Options$Mutation$CreateOrder options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreateOrder> watchMutation$CreateOrder(
          WatchOptions$Mutation$CreateOrder options) =>
      this.watchMutation(options);
}

class Mutation$CreateOrder$HookResult {
  Mutation$CreateOrder$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$CreateOrder runMutation;

  final graphql.QueryResult<Mutation$CreateOrder> result;
}

Mutation$CreateOrder$HookResult useMutation$CreateOrder(
    [WidgetOptions$Mutation$CreateOrder? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$CreateOrder());
  return Mutation$CreateOrder$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$CreateOrder> useWatchMutation$CreateOrder(
        WatchOptions$Mutation$CreateOrder options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$CreateOrder
    extends graphql.MutationOptions<Mutation$CreateOrder> {
  WidgetOptions$Mutation$CreateOrder({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreateOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreateOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreateOrder>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$CreateOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreateOrder,
          parserFn: _parserFn$Mutation$CreateOrder,
        );

  final OnMutationCompleted$Mutation$CreateOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$CreateOrder
    = graphql.MultiSourceResult<Mutation$CreateOrder> Function(
  Variables$Mutation$CreateOrder, {
  Object? optimisticResult,
  Mutation$CreateOrder? typedOptimisticResult,
});
typedef Builder$Mutation$CreateOrder = widgets.Widget Function(
  RunMutation$Mutation$CreateOrder,
  graphql.QueryResult<Mutation$CreateOrder>?,
);

class Mutation$CreateOrder$Widget
    extends graphql_flutter.Mutation<Mutation$CreateOrder> {
  Mutation$CreateOrder$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$CreateOrder? options,
    required Builder$Mutation$CreateOrder builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$CreateOrder(),
          builder: (
            run,
            result,
          ) =>
              builder(
            (
              variables, {
              optimisticResult,
              typedOptimisticResult,
            }) =>
                run(
              variables.toJson(),
              optimisticResult:
                  optimisticResult ?? typedOptimisticResult?.toJson(),
            ),
            result,
          ),
        );
}

class Mutation$CreateOrder$insert_orders {
  Mutation$CreateOrder$insert_orders({
    required this.affected_rows,
    this.$__typename = 'OrderMutationResponse',
  });

  factory Mutation$CreateOrder$insert_orders.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder$insert_orders(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOrder$insert_orders) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOrder$insert_orders
    on Mutation$CreateOrder$insert_orders {
  CopyWith$Mutation$CreateOrder$insert_orders<
          Mutation$CreateOrder$insert_orders>
      get copyWith => CopyWith$Mutation$CreateOrder$insert_orders(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrder$insert_orders<TRes> {
  factory CopyWith$Mutation$CreateOrder$insert_orders(
    Mutation$CreateOrder$insert_orders instance,
    TRes Function(Mutation$CreateOrder$insert_orders) then,
  ) = _CopyWithImpl$Mutation$CreateOrder$insert_orders;

  factory CopyWith$Mutation$CreateOrder$insert_orders.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder$insert_orders;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOrder$insert_orders<TRes>
    implements CopyWith$Mutation$CreateOrder$insert_orders<TRes> {
  _CopyWithImpl$Mutation$CreateOrder$insert_orders(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder$insert_orders _instance;

  final TRes Function(Mutation$CreateOrder$insert_orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder$insert_orders(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOrder$insert_orders<TRes>
    implements CopyWith$Mutation$CreateOrder$insert_orders<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder$insert_orders(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Mutation$CreateOrder$insert_order_items {
  Mutation$CreateOrder$insert_order_items({
    required this.affected_rows,
    this.$__typename = 'OrderItemsMutationResponse',
  });

  factory Mutation$CreateOrder$insert_order_items.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder$insert_order_items(
      affected_rows: (l$affected_rows as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int affected_rows;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$affected_rows = affected_rows;
    _resultData['affected_rows'] = l$affected_rows;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$affected_rows = affected_rows;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$affected_rows,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$CreateOrder$insert_order_items) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$affected_rows = affected_rows;
    final lOther$affected_rows = other.affected_rows;
    if (l$affected_rows != lOther$affected_rows) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Mutation$CreateOrder$insert_order_items
    on Mutation$CreateOrder$insert_order_items {
  CopyWith$Mutation$CreateOrder$insert_order_items<
          Mutation$CreateOrder$insert_order_items>
      get copyWith => CopyWith$Mutation$CreateOrder$insert_order_items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrder$insert_order_items<TRes> {
  factory CopyWith$Mutation$CreateOrder$insert_order_items(
    Mutation$CreateOrder$insert_order_items instance,
    TRes Function(Mutation$CreateOrder$insert_order_items) then,
  ) = _CopyWithImpl$Mutation$CreateOrder$insert_order_items;

  factory CopyWith$Mutation$CreateOrder$insert_order_items.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder$insert_order_items;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOrder$insert_order_items<TRes>
    implements CopyWith$Mutation$CreateOrder$insert_order_items<TRes> {
  _CopyWithImpl$Mutation$CreateOrder$insert_order_items(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder$insert_order_items _instance;

  final TRes Function(Mutation$CreateOrder$insert_order_items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder$insert_order_items(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOrder$insert_order_items<TRes>
    implements CopyWith$Mutation$CreateOrder$insert_order_items<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder$insert_order_items(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}
