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
            alias: NameNode(value: 'createAt'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_latitude'),
            alias: NameNode(value: 'customerLatitude'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'customer_longitude'),
            alias: NameNode(value: 'customerLongitude'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'delivery_address'),
            alias: NameNode(value: 'deliveryAddress'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'delivery_fee'),
            alias: NameNode(value: 'deliveryFee'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: NameNode(value: 'id'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'order_status'),
            alias: NameNode(value: 'orderStatus'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'payment_amount'),
            alias: NameNode(value: 'paymentAmount'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'user_id'),
            alias: NameNode(value: 'userId'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'payment_id'),
            alias: NameNode(value: 'paymentId'),
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
    required this.createAt,
    required this.customerLatitude,
    required this.customerLongitude,
    required this.deliveryAddress,
    required this.deliveryFee,
    required this.id,
    required this.orderStatus,
    required this.paymentAmount,
    required this.userId,
    required this.paymentId,
    this.$__typename = 'Order',
  });

  factory Query$GetOrders$orders.fromJson(Map<String, dynamic> json) {
    final l$createAt = json['createAt'];
    final l$customerLatitude = json['customerLatitude'];
    final l$customerLongitude = json['customerLongitude'];
    final l$deliveryAddress = json['deliveryAddress'];
    final l$deliveryFee = json['deliveryFee'];
    final l$id = json['id'];
    final l$orderStatus = json['orderStatus'];
    final l$paymentAmount = json['paymentAmount'];
    final l$userId = json['userId'];
    final l$paymentId = json['paymentId'];
    final l$$__typename = json['__typename'];
    return Query$GetOrders$orders(
      createAt: (l$createAt as String),
      customerLatitude: (l$customerLatitude as num).toDouble(),
      customerLongitude: (l$customerLongitude as num).toDouble(),
      deliveryAddress: (l$deliveryAddress as String),
      deliveryFee: (l$deliveryFee as num).toDouble(),
      id: (l$id as int),
      orderStatus: (l$orderStatus as String),
      paymentAmount: (l$paymentAmount as num).toDouble(),
      userId: (l$userId as String),
      paymentId: (l$paymentId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String createAt;

  final double customerLatitude;

  final double customerLongitude;

  final String deliveryAddress;

  final double deliveryFee;

  final int id;

  final String orderStatus;

  final double paymentAmount;

  final String userId;

  final String paymentId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createAt = createAt;
    _resultData['createAt'] = l$createAt;
    final l$customerLatitude = customerLatitude;
    _resultData['customerLatitude'] = l$customerLatitude;
    final l$customerLongitude = customerLongitude;
    _resultData['customerLongitude'] = l$customerLongitude;
    final l$deliveryAddress = deliveryAddress;
    _resultData['deliveryAddress'] = l$deliveryAddress;
    final l$deliveryFee = deliveryFee;
    _resultData['deliveryFee'] = l$deliveryFee;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$orderStatus = orderStatus;
    _resultData['orderStatus'] = l$orderStatus;
    final l$paymentAmount = paymentAmount;
    _resultData['paymentAmount'] = l$paymentAmount;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$paymentId = paymentId;
    _resultData['paymentId'] = l$paymentId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createAt = createAt;
    final l$customerLatitude = customerLatitude;
    final l$customerLongitude = customerLongitude;
    final l$deliveryAddress = deliveryAddress;
    final l$deliveryFee = deliveryFee;
    final l$id = id;
    final l$orderStatus = orderStatus;
    final l$paymentAmount = paymentAmount;
    final l$userId = userId;
    final l$paymentId = paymentId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createAt,
      l$customerLatitude,
      l$customerLongitude,
      l$deliveryAddress,
      l$deliveryFee,
      l$id,
      l$orderStatus,
      l$paymentAmount,
      l$userId,
      l$paymentId,
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
    final l$createAt = createAt;
    final lOther$createAt = other.createAt;
    if (l$createAt != lOther$createAt) {
      return false;
    }
    final l$customerLatitude = customerLatitude;
    final lOther$customerLatitude = other.customerLatitude;
    if (l$customerLatitude != lOther$customerLatitude) {
      return false;
    }
    final l$customerLongitude = customerLongitude;
    final lOther$customerLongitude = other.customerLongitude;
    if (l$customerLongitude != lOther$customerLongitude) {
      return false;
    }
    final l$deliveryAddress = deliveryAddress;
    final lOther$deliveryAddress = other.deliveryAddress;
    if (l$deliveryAddress != lOther$deliveryAddress) {
      return false;
    }
    final l$deliveryFee = deliveryFee;
    final lOther$deliveryFee = other.deliveryFee;
    if (l$deliveryFee != lOther$deliveryFee) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$orderStatus = orderStatus;
    final lOther$orderStatus = other.orderStatus;
    if (l$orderStatus != lOther$orderStatus) {
      return false;
    }
    final l$paymentAmount = paymentAmount;
    final lOther$paymentAmount = other.paymentAmount;
    if (l$paymentAmount != lOther$paymentAmount) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$paymentId = paymentId;
    final lOther$paymentId = other.paymentId;
    if (l$paymentId != lOther$paymentId) {
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
    String? createAt,
    double? customerLatitude,
    double? customerLongitude,
    String? deliveryAddress,
    double? deliveryFee,
    int? id,
    String? orderStatus,
    double? paymentAmount,
    String? userId,
    String? paymentId,
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
    Object? createAt = _undefined,
    Object? customerLatitude = _undefined,
    Object? customerLongitude = _undefined,
    Object? deliveryAddress = _undefined,
    Object? deliveryFee = _undefined,
    Object? id = _undefined,
    Object? orderStatus = _undefined,
    Object? paymentAmount = _undefined,
    Object? userId = _undefined,
    Object? paymentId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetOrders$orders(
        createAt: createAt == _undefined || createAt == null
            ? _instance.createAt
            : (createAt as String),
        customerLatitude:
            customerLatitude == _undefined || customerLatitude == null
                ? _instance.customerLatitude
                : (customerLatitude as double),
        customerLongitude:
            customerLongitude == _undefined || customerLongitude == null
                ? _instance.customerLongitude
                : (customerLongitude as double),
        deliveryAddress:
            deliveryAddress == _undefined || deliveryAddress == null
                ? _instance.deliveryAddress
                : (deliveryAddress as String),
        deliveryFee: deliveryFee == _undefined || deliveryFee == null
            ? _instance.deliveryFee
            : (deliveryFee as double),
        id: id == _undefined || id == null ? _instance.id : (id as int),
        orderStatus: orderStatus == _undefined || orderStatus == null
            ? _instance.orderStatus
            : (orderStatus as String),
        paymentAmount: paymentAmount == _undefined || paymentAmount == null
            ? _instance.paymentAmount
            : (paymentAmount as double),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        paymentId: paymentId == _undefined || paymentId == null
            ? _instance.paymentId
            : (paymentId as String),
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
    String? createAt,
    double? customerLatitude,
    double? customerLongitude,
    String? deliveryAddress,
    double? deliveryFee,
    int? id,
    String? orderStatus,
    double? paymentAmount,
    String? userId,
    String? paymentId,
    String? $__typename,
  }) =>
      _res;
}
