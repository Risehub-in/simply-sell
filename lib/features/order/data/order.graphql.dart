import '../../../schema.graphql.dart';
import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$FetchOrders {
  Query$FetchOrders({
    this.orders,
    this.$__typename = 'Query',
  });

  factory Query$FetchOrders.fromJson(Map<String, dynamic> json) {
    final l$orders = json['orders'];
    final l$$__typename = json['__typename'];
    return Query$FetchOrders(
      orders: l$orders == null
          ? null
          : Query$FetchOrders$orders.fromJson(
              (l$orders as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchOrders$orders? orders;

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
    if (!(other is Query$FetchOrders) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$FetchOrders on Query$FetchOrders {
  CopyWith$Query$FetchOrders<Query$FetchOrders> get copyWith =>
      CopyWith$Query$FetchOrders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchOrders<TRes> {
  factory CopyWith$Query$FetchOrders(
    Query$FetchOrders instance,
    TRes Function(Query$FetchOrders) then,
  ) = _CopyWithImpl$Query$FetchOrders;

  factory CopyWith$Query$FetchOrders.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchOrders;

  TRes call({
    Query$FetchOrders$orders? orders,
    String? $__typename,
  });
  CopyWith$Query$FetchOrders$orders<TRes> get orders;
}

class _CopyWithImpl$Query$FetchOrders<TRes>
    implements CopyWith$Query$FetchOrders<TRes> {
  _CopyWithImpl$Query$FetchOrders(
    this._instance,
    this._then,
  );

  final Query$FetchOrders _instance;

  final TRes Function(Query$FetchOrders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchOrders(
        orders: orders == _undefined
            ? _instance.orders
            : (orders as Query$FetchOrders$orders?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchOrders$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return local$orders == null
        ? CopyWith$Query$FetchOrders$orders.stub(_then(_instance))
        : CopyWith$Query$FetchOrders$orders(
            local$orders, (e) => call(orders: e));
  }
}

class _CopyWithStubImpl$Query$FetchOrders<TRes>
    implements CopyWith$Query$FetchOrders<TRes> {
  _CopyWithStubImpl$Query$FetchOrders(this._res);

  TRes _res;

  call({
    Query$FetchOrders$orders? orders,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchOrders$orders<TRes> get orders =>
      CopyWith$Query$FetchOrders$orders.stub(_res);
}

const documentNodeQueryFetchOrders = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchOrders'),
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
            name: NameNode(value: 'payment_response_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'order_items'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'item_quantity'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'price'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'variant'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'mrp'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'price'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'product'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'product_title'),
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
            name: NameNode(value: 'address'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'address_type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'area_locality'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'flat_floor_bldg'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'location_address'),
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
Query$FetchOrders _parserFn$Query$FetchOrders(Map<String, dynamic> data) =>
    Query$FetchOrders.fromJson(data);
typedef OnQueryComplete$Query$FetchOrders = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchOrders?,
);

class Options$Query$FetchOrders
    extends graphql.QueryOptions<Query$FetchOrders> {
  Options$Query$FetchOrders({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchOrders? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchOrders? onComplete,
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
                    data == null ? null : _parserFn$Query$FetchOrders(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchOrders,
          parserFn: _parserFn$Query$FetchOrders,
        );

  final OnQueryComplete$Query$FetchOrders? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchOrders
    extends graphql.WatchQueryOptions<Query$FetchOrders> {
  WatchOptions$Query$FetchOrders({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchOrders? typedOptimisticResult,
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
          document: documentNodeQueryFetchOrders,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchOrders,
        );
}

class FetchMoreOptions$Query$FetchOrders extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchOrders({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchOrders,
        );
}

extension ClientExtension$Query$FetchOrders on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchOrders>> query$FetchOrders(
          [Options$Query$FetchOrders? options]) async =>
      await this.query(options ?? Options$Query$FetchOrders());
  graphql.ObservableQuery<Query$FetchOrders> watchQuery$FetchOrders(
          [WatchOptions$Query$FetchOrders? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchOrders());
  void writeQuery$FetchOrders({
    required Query$FetchOrders data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFetchOrders)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchOrders? readQuery$FetchOrders({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFetchOrders)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchOrders.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchOrders> useQuery$FetchOrders(
        [Options$Query$FetchOrders? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FetchOrders());
graphql.ObservableQuery<Query$FetchOrders> useWatchQuery$FetchOrders(
        [WatchOptions$Query$FetchOrders? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$FetchOrders());

class Query$FetchOrders$Widget
    extends graphql_flutter.Query<Query$FetchOrders> {
  Query$FetchOrders$Widget({
    widgets.Key? key,
    Options$Query$FetchOrders? options,
    required graphql_flutter.QueryBuilder<Query$FetchOrders> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchOrders(),
          builder: builder,
        );
}

class Query$FetchOrders$orders {
  Query$FetchOrders$orders({
    this.created_at,
    required this.delivery_fee,
    required this.id,
    required this.order_status,
    required this.payment_amount,
    required this.payment_response_id,
    required this.order_items,
    this.address,
    this.$__typename = 'Order',
  });

  factory Query$FetchOrders$orders.fromJson(Map<String, dynamic> json) {
    final l$created_at = json['created_at'];
    final l$delivery_fee = json['delivery_fee'];
    final l$id = json['id'];
    final l$order_status = json['order_status'];
    final l$payment_amount = json['payment_amount'];
    final l$payment_response_id = json['payment_response_id'];
    final l$order_items = json['order_items'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Query$FetchOrders$orders(
      created_at: (l$created_at as String?),
      delivery_fee: (l$delivery_fee as num).toDouble(),
      id: (l$id as int),
      order_status: (l$order_status as String),
      payment_amount: (l$payment_amount as num).toDouble(),
      payment_response_id: (l$payment_response_id as String),
      order_items: (l$order_items as List<dynamic>)
          .map((e) => e == null
              ? null
              : Query$FetchOrders$orders$order_items.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      address: l$address == null
          ? null
          : Query$FetchOrders$orders$address.fromJson(
              (l$address as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String? created_at;

  final double delivery_fee;

  final int id;

  final String order_status;

  final double payment_amount;

  final String payment_response_id;

  final List<Query$FetchOrders$orders$order_items?> order_items;

  final Query$FetchOrders$orders$address? address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$created_at = created_at;
    _resultData['created_at'] = l$created_at;
    final l$delivery_fee = delivery_fee;
    _resultData['delivery_fee'] = l$delivery_fee;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$order_status = order_status;
    _resultData['order_status'] = l$order_status;
    final l$payment_amount = payment_amount;
    _resultData['payment_amount'] = l$payment_amount;
    final l$payment_response_id = payment_response_id;
    _resultData['payment_response_id'] = l$payment_response_id;
    final l$order_items = order_items;
    _resultData['order_items'] = l$order_items.map((e) => e?.toJson()).toList();
    final l$address = address;
    _resultData['address'] = l$address?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$created_at = created_at;
    final l$delivery_fee = delivery_fee;
    final l$id = id;
    final l$order_status = order_status;
    final l$payment_amount = payment_amount;
    final l$payment_response_id = payment_response_id;
    final l$order_items = order_items;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$created_at,
      l$delivery_fee,
      l$id,
      l$order_status,
      l$payment_amount,
      l$payment_response_id,
      Object.hashAll(l$order_items.map((v) => v)),
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchOrders$orders) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (l$created_at != lOther$created_at) {
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
    final l$payment_response_id = payment_response_id;
    final lOther$payment_response_id = other.payment_response_id;
    if (l$payment_response_id != lOther$payment_response_id) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
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

extension UtilityExtension$Query$FetchOrders$orders
    on Query$FetchOrders$orders {
  CopyWith$Query$FetchOrders$orders<Query$FetchOrders$orders> get copyWith =>
      CopyWith$Query$FetchOrders$orders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchOrders$orders<TRes> {
  factory CopyWith$Query$FetchOrders$orders(
    Query$FetchOrders$orders instance,
    TRes Function(Query$FetchOrders$orders) then,
  ) = _CopyWithImpl$Query$FetchOrders$orders;

  factory CopyWith$Query$FetchOrders$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchOrders$orders;

  TRes call({
    String? created_at,
    double? delivery_fee,
    int? id,
    String? order_status,
    double? payment_amount,
    String? payment_response_id,
    List<Query$FetchOrders$orders$order_items?>? order_items,
    Query$FetchOrders$orders$address? address,
    String? $__typename,
  });
  TRes order_items(
      Iterable<Query$FetchOrders$orders$order_items?> Function(
              Iterable<
                  CopyWith$Query$FetchOrders$orders$order_items<
                      Query$FetchOrders$orders$order_items>?>)
          _fn);
  CopyWith$Query$FetchOrders$orders$address<TRes> get address;
}

class _CopyWithImpl$Query$FetchOrders$orders<TRes>
    implements CopyWith$Query$FetchOrders$orders<TRes> {
  _CopyWithImpl$Query$FetchOrders$orders(
    this._instance,
    this._then,
  );

  final Query$FetchOrders$orders _instance;

  final TRes Function(Query$FetchOrders$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? created_at = _undefined,
    Object? delivery_fee = _undefined,
    Object? id = _undefined,
    Object? order_status = _undefined,
    Object? payment_amount = _undefined,
    Object? payment_response_id = _undefined,
    Object? order_items = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchOrders$orders(
        created_at: created_at == _undefined
            ? _instance.created_at
            : (created_at as String?),
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
        payment_response_id:
            payment_response_id == _undefined || payment_response_id == null
                ? _instance.payment_response_id
                : (payment_response_id as String),
        order_items: order_items == _undefined || order_items == null
            ? _instance.order_items
            : (order_items as List<Query$FetchOrders$orders$order_items?>),
        address: address == _undefined
            ? _instance.address
            : (address as Query$FetchOrders$orders$address?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  TRes order_items(
          Iterable<Query$FetchOrders$orders$order_items?> Function(
                  Iterable<
                      CopyWith$Query$FetchOrders$orders$order_items<
                          Query$FetchOrders$orders$order_items>?>)
              _fn) =>
      call(
          order_items: _fn(_instance.order_items.map((e) => e == null
              ? null
              : CopyWith$Query$FetchOrders$orders$order_items(
                  e,
                  (i) => i,
                ))).toList());
  CopyWith$Query$FetchOrders$orders$address<TRes> get address {
    final local$address = _instance.address;
    return local$address == null
        ? CopyWith$Query$FetchOrders$orders$address.stub(_then(_instance))
        : CopyWith$Query$FetchOrders$orders$address(
            local$address, (e) => call(address: e));
  }
}

class _CopyWithStubImpl$Query$FetchOrders$orders<TRes>
    implements CopyWith$Query$FetchOrders$orders<TRes> {
  _CopyWithStubImpl$Query$FetchOrders$orders(this._res);

  TRes _res;

  call({
    String? created_at,
    double? delivery_fee,
    int? id,
    String? order_status,
    double? payment_amount,
    String? payment_response_id,
    List<Query$FetchOrders$orders$order_items?>? order_items,
    Query$FetchOrders$orders$address? address,
    String? $__typename,
  }) =>
      _res;
  order_items(_fn) => _res;
  CopyWith$Query$FetchOrders$orders$address<TRes> get address =>
      CopyWith$Query$FetchOrders$orders$address.stub(_res);
}

class Query$FetchOrders$orders$order_items {
  Query$FetchOrders$orders$order_items({
    required this.item_quantity,
    required this.price,
    this.variant,
    this.$__typename = 'OrderItem',
  });

  factory Query$FetchOrders$orders$order_items.fromJson(
      Map<String, dynamic> json) {
    final l$item_quantity = json['item_quantity'];
    final l$price = json['price'];
    final l$variant = json['variant'];
    final l$$__typename = json['__typename'];
    return Query$FetchOrders$orders$order_items(
      item_quantity: (l$item_quantity as int),
      price: (l$price as num).toDouble(),
      variant: l$variant == null
          ? null
          : Query$FetchOrders$orders$order_items$variant.fromJson(
              (l$variant as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int item_quantity;

  final double price;

  final Query$FetchOrders$orders$order_items$variant? variant;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$item_quantity = item_quantity;
    _resultData['item_quantity'] = l$item_quantity;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$variant = variant;
    _resultData['variant'] = l$variant?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$item_quantity = item_quantity;
    final l$price = price;
    final l$variant = variant;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$item_quantity,
      l$price,
      l$variant,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchOrders$orders$order_items) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$item_quantity = item_quantity;
    final lOther$item_quantity = other.item_quantity;
    if (l$item_quantity != lOther$item_quantity) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$variant = variant;
    final lOther$variant = other.variant;
    if (l$variant != lOther$variant) {
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

extension UtilityExtension$Query$FetchOrders$orders$order_items
    on Query$FetchOrders$orders$order_items {
  CopyWith$Query$FetchOrders$orders$order_items<
          Query$FetchOrders$orders$order_items>
      get copyWith => CopyWith$Query$FetchOrders$orders$order_items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchOrders$orders$order_items<TRes> {
  factory CopyWith$Query$FetchOrders$orders$order_items(
    Query$FetchOrders$orders$order_items instance,
    TRes Function(Query$FetchOrders$orders$order_items) then,
  ) = _CopyWithImpl$Query$FetchOrders$orders$order_items;

  factory CopyWith$Query$FetchOrders$orders$order_items.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchOrders$orders$order_items;

  TRes call({
    int? item_quantity,
    double? price,
    Query$FetchOrders$orders$order_items$variant? variant,
    String? $__typename,
  });
  CopyWith$Query$FetchOrders$orders$order_items$variant<TRes> get variant;
}

class _CopyWithImpl$Query$FetchOrders$orders$order_items<TRes>
    implements CopyWith$Query$FetchOrders$orders$order_items<TRes> {
  _CopyWithImpl$Query$FetchOrders$orders$order_items(
    this._instance,
    this._then,
  );

  final Query$FetchOrders$orders$order_items _instance;

  final TRes Function(Query$FetchOrders$orders$order_items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? item_quantity = _undefined,
    Object? price = _undefined,
    Object? variant = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchOrders$orders$order_items(
        item_quantity: item_quantity == _undefined || item_quantity == null
            ? _instance.item_quantity
            : (item_quantity as int),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
        variant: variant == _undefined
            ? _instance.variant
            : (variant as Query$FetchOrders$orders$order_items$variant?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchOrders$orders$order_items$variant<TRes> get variant {
    final local$variant = _instance.variant;
    return local$variant == null
        ? CopyWith$Query$FetchOrders$orders$order_items$variant.stub(
            _then(_instance))
        : CopyWith$Query$FetchOrders$orders$order_items$variant(
            local$variant, (e) => call(variant: e));
  }
}

class _CopyWithStubImpl$Query$FetchOrders$orders$order_items<TRes>
    implements CopyWith$Query$FetchOrders$orders$order_items<TRes> {
  _CopyWithStubImpl$Query$FetchOrders$orders$order_items(this._res);

  TRes _res;

  call({
    int? item_quantity,
    double? price,
    Query$FetchOrders$orders$order_items$variant? variant,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchOrders$orders$order_items$variant<TRes> get variant =>
      CopyWith$Query$FetchOrders$orders$order_items$variant.stub(_res);
}

class Query$FetchOrders$orders$order_items$variant {
  Query$FetchOrders$orders$order_items$variant({
    this.mrp,
    this.price,
    this.product,
    this.$__typename = 'Variant',
  });

  factory Query$FetchOrders$orders$order_items$variant.fromJson(
      Map<String, dynamic> json) {
    final l$mrp = json['mrp'];
    final l$price = json['price'];
    final l$product = json['product'];
    final l$$__typename = json['__typename'];
    return Query$FetchOrders$orders$order_items$variant(
      mrp: (l$mrp as num?)?.toDouble(),
      price: (l$price as num?)?.toDouble(),
      product: l$product == null
          ? null
          : Query$FetchOrders$orders$order_items$variant$product.fromJson(
              (l$product as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final double? mrp;

  final double? price;

  final Query$FetchOrders$orders$order_items$variant$product? product;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$mrp = mrp;
    _resultData['mrp'] = l$mrp;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$mrp = mrp;
    final l$price = price;
    final l$product = product;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$mrp,
      l$price,
      l$product,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchOrders$orders$order_items$variant) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mrp = mrp;
    final lOther$mrp = other.mrp;
    if (l$mrp != lOther$mrp) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
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

extension UtilityExtension$Query$FetchOrders$orders$order_items$variant
    on Query$FetchOrders$orders$order_items$variant {
  CopyWith$Query$FetchOrders$orders$order_items$variant<
          Query$FetchOrders$orders$order_items$variant>
      get copyWith => CopyWith$Query$FetchOrders$orders$order_items$variant(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchOrders$orders$order_items$variant<TRes> {
  factory CopyWith$Query$FetchOrders$orders$order_items$variant(
    Query$FetchOrders$orders$order_items$variant instance,
    TRes Function(Query$FetchOrders$orders$order_items$variant) then,
  ) = _CopyWithImpl$Query$FetchOrders$orders$order_items$variant;

  factory CopyWith$Query$FetchOrders$orders$order_items$variant.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchOrders$orders$order_items$variant;

  TRes call({
    double? mrp,
    double? price,
    Query$FetchOrders$orders$order_items$variant$product? product,
    String? $__typename,
  });
  CopyWith$Query$FetchOrders$orders$order_items$variant$product<TRes>
      get product;
}

class _CopyWithImpl$Query$FetchOrders$orders$order_items$variant<TRes>
    implements CopyWith$Query$FetchOrders$orders$order_items$variant<TRes> {
  _CopyWithImpl$Query$FetchOrders$orders$order_items$variant(
    this._instance,
    this._then,
  );

  final Query$FetchOrders$orders$order_items$variant _instance;

  final TRes Function(Query$FetchOrders$orders$order_items$variant) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mrp = _undefined,
    Object? price = _undefined,
    Object? product = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchOrders$orders$order_items$variant(
        mrp: mrp == _undefined ? _instance.mrp : (mrp as double?),
        price: price == _undefined ? _instance.price : (price as double?),
        product: product == _undefined
            ? _instance.product
            : (product
                as Query$FetchOrders$orders$order_items$variant$product?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchOrders$orders$order_items$variant$product<TRes>
      get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$FetchOrders$orders$order_items$variant$product.stub(
            _then(_instance))
        : CopyWith$Query$FetchOrders$orders$order_items$variant$product(
            local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Query$FetchOrders$orders$order_items$variant<TRes>
    implements CopyWith$Query$FetchOrders$orders$order_items$variant<TRes> {
  _CopyWithStubImpl$Query$FetchOrders$orders$order_items$variant(this._res);

  TRes _res;

  call({
    double? mrp,
    double? price,
    Query$FetchOrders$orders$order_items$variant$product? product,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchOrders$orders$order_items$variant$product<TRes>
      get product =>
          CopyWith$Query$FetchOrders$orders$order_items$variant$product.stub(
              _res);
}

class Query$FetchOrders$orders$order_items$variant$product {
  Query$FetchOrders$orders$order_items$variant$product({
    this.product_title,
    this.$__typename = 'Product',
  });

  factory Query$FetchOrders$orders$order_items$variant$product.fromJson(
      Map<String, dynamic> json) {
    final l$product_title = json['product_title'];
    final l$$__typename = json['__typename'];
    return Query$FetchOrders$orders$order_items$variant$product(
      product_title: (l$product_title as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? product_title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$product_title = product_title;
    _resultData['product_title'] = l$product_title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$product_title = product_title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$product_title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchOrders$orders$order_items$variant$product) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_title = product_title;
    final lOther$product_title = other.product_title;
    if (l$product_title != lOther$product_title) {
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

extension UtilityExtension$Query$FetchOrders$orders$order_items$variant$product
    on Query$FetchOrders$orders$order_items$variant$product {
  CopyWith$Query$FetchOrders$orders$order_items$variant$product<
          Query$FetchOrders$orders$order_items$variant$product>
      get copyWith =>
          CopyWith$Query$FetchOrders$orders$order_items$variant$product(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchOrders$orders$order_items$variant$product<
    TRes> {
  factory CopyWith$Query$FetchOrders$orders$order_items$variant$product(
    Query$FetchOrders$orders$order_items$variant$product instance,
    TRes Function(Query$FetchOrders$orders$order_items$variant$product) then,
  ) = _CopyWithImpl$Query$FetchOrders$orders$order_items$variant$product;

  factory CopyWith$Query$FetchOrders$orders$order_items$variant$product.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FetchOrders$orders$order_items$variant$product;

  TRes call({
    String? product_title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchOrders$orders$order_items$variant$product<TRes>
    implements
        CopyWith$Query$FetchOrders$orders$order_items$variant$product<TRes> {
  _CopyWithImpl$Query$FetchOrders$orders$order_items$variant$product(
    this._instance,
    this._then,
  );

  final Query$FetchOrders$orders$order_items$variant$product _instance;

  final TRes Function(Query$FetchOrders$orders$order_items$variant$product)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchOrders$orders$order_items$variant$product(
        product_title: product_title == _undefined
            ? _instance.product_title
            : (product_title as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchOrders$orders$order_items$variant$product<
        TRes>
    implements
        CopyWith$Query$FetchOrders$orders$order_items$variant$product<TRes> {
  _CopyWithStubImpl$Query$FetchOrders$orders$order_items$variant$product(
      this._res);

  TRes _res;

  call({
    String? product_title,
    String? $__typename,
  }) =>
      _res;
}

class Query$FetchOrders$orders$address {
  Query$FetchOrders$orders$address({
    this.address_type,
    this.area_locality,
    this.flat_floor_bldg,
    this.location_address,
    this.$__typename = 'Address',
  });

  factory Query$FetchOrders$orders$address.fromJson(Map<String, dynamic> json) {
    final l$address_type = json['address_type'];
    final l$area_locality = json['area_locality'];
    final l$flat_floor_bldg = json['flat_floor_bldg'];
    final l$location_address = json['location_address'];
    final l$$__typename = json['__typename'];
    return Query$FetchOrders$orders$address(
      address_type: (l$address_type as String?),
      area_locality: (l$area_locality as String?),
      flat_floor_bldg: (l$flat_floor_bldg as String?),
      location_address: (l$location_address as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? address_type;

  final String? area_locality;

  final String? flat_floor_bldg;

  final String? location_address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$address_type = address_type;
    _resultData['address_type'] = l$address_type;
    final l$area_locality = area_locality;
    _resultData['area_locality'] = l$area_locality;
    final l$flat_floor_bldg = flat_floor_bldg;
    _resultData['flat_floor_bldg'] = l$flat_floor_bldg;
    final l$location_address = location_address;
    _resultData['location_address'] = l$location_address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$address_type = address_type;
    final l$area_locality = area_locality;
    final l$flat_floor_bldg = flat_floor_bldg;
    final l$location_address = location_address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$address_type,
      l$area_locality,
      l$flat_floor_bldg,
      l$location_address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchOrders$orders$address) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$address_type = address_type;
    final lOther$address_type = other.address_type;
    if (l$address_type != lOther$address_type) {
      return false;
    }
    final l$area_locality = area_locality;
    final lOther$area_locality = other.area_locality;
    if (l$area_locality != lOther$area_locality) {
      return false;
    }
    final l$flat_floor_bldg = flat_floor_bldg;
    final lOther$flat_floor_bldg = other.flat_floor_bldg;
    if (l$flat_floor_bldg != lOther$flat_floor_bldg) {
      return false;
    }
    final l$location_address = location_address;
    final lOther$location_address = other.location_address;
    if (l$location_address != lOther$location_address) {
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

extension UtilityExtension$Query$FetchOrders$orders$address
    on Query$FetchOrders$orders$address {
  CopyWith$Query$FetchOrders$orders$address<Query$FetchOrders$orders$address>
      get copyWith => CopyWith$Query$FetchOrders$orders$address(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FetchOrders$orders$address<TRes> {
  factory CopyWith$Query$FetchOrders$orders$address(
    Query$FetchOrders$orders$address instance,
    TRes Function(Query$FetchOrders$orders$address) then,
  ) = _CopyWithImpl$Query$FetchOrders$orders$address;

  factory CopyWith$Query$FetchOrders$orders$address.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchOrders$orders$address;

  TRes call({
    String? address_type,
    String? area_locality,
    String? flat_floor_bldg,
    String? location_address,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchOrders$orders$address<TRes>
    implements CopyWith$Query$FetchOrders$orders$address<TRes> {
  _CopyWithImpl$Query$FetchOrders$orders$address(
    this._instance,
    this._then,
  );

  final Query$FetchOrders$orders$address _instance;

  final TRes Function(Query$FetchOrders$orders$address) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? address_type = _undefined,
    Object? area_locality = _undefined,
    Object? flat_floor_bldg = _undefined,
    Object? location_address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchOrders$orders$address(
        address_type: address_type == _undefined
            ? _instance.address_type
            : (address_type as String?),
        area_locality: area_locality == _undefined
            ? _instance.area_locality
            : (area_locality as String?),
        flat_floor_bldg: flat_floor_bldg == _undefined
            ? _instance.flat_floor_bldg
            : (flat_floor_bldg as String?),
        location_address: location_address == _undefined
            ? _instance.location_address
            : (location_address as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchOrders$orders$address<TRes>
    implements CopyWith$Query$FetchOrders$orders$address<TRes> {
  _CopyWithStubImpl$Query$FetchOrders$orders$address(this._res);

  TRes _res;

  call({
    String? address_type,
    String? area_locality,
    String? flat_floor_bldg,
    String? location_address,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$CreateOrder {
  factory Variables$Mutation$CreateOrder({
    required int id,
    required String user_id,
    required double delivery_fee,
    required int address_id,
    required String payment_response_id,
    required double payment_amount,
    required List<Input$order_items_insert_input> order_items,
  }) =>
      Variables$Mutation$CreateOrder._({
        r'id': id,
        r'user_id': user_id,
        r'delivery_fee': delivery_fee,
        r'address_id': address_id,
        r'payment_response_id': payment_response_id,
        r'payment_amount': payment_amount,
        r'order_items': order_items,
      });

  Variables$Mutation$CreateOrder._(this._$data);

  factory Variables$Mutation$CreateOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$user_id = data['user_id'];
    result$data['user_id'] = (l$user_id as String);
    final l$delivery_fee = data['delivery_fee'];
    result$data['delivery_fee'] = (l$delivery_fee as num).toDouble();
    final l$address_id = data['address_id'];
    result$data['address_id'] = (l$address_id as int);
    final l$payment_response_id = data['payment_response_id'];
    result$data['payment_response_id'] = (l$payment_response_id as String);
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

  int get id => (_$data['id'] as int);
  String get user_id => (_$data['user_id'] as String);
  double get delivery_fee => (_$data['delivery_fee'] as double);
  int get address_id => (_$data['address_id'] as int);
  String get payment_response_id => (_$data['payment_response_id'] as String);
  double get payment_amount => (_$data['payment_amount'] as double);
  List<Input$order_items_insert_input> get order_items =>
      (_$data['order_items'] as List<Input$order_items_insert_input>);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$user_id = user_id;
    result$data['user_id'] = l$user_id;
    final l$delivery_fee = delivery_fee;
    result$data['delivery_fee'] = l$delivery_fee;
    final l$address_id = address_id;
    result$data['address_id'] = l$address_id;
    final l$payment_response_id = payment_response_id;
    result$data['payment_response_id'] = l$payment_response_id;
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$delivery_fee = delivery_fee;
    final lOther$delivery_fee = other.delivery_fee;
    if (l$delivery_fee != lOther$delivery_fee) {
      return false;
    }
    final l$address_id = address_id;
    final lOther$address_id = other.address_id;
    if (l$address_id != lOther$address_id) {
      return false;
    }
    final l$payment_response_id = payment_response_id;
    final lOther$payment_response_id = other.payment_response_id;
    if (l$payment_response_id != lOther$payment_response_id) {
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
    final l$id = id;
    final l$user_id = user_id;
    final l$delivery_fee = delivery_fee;
    final l$address_id = address_id;
    final l$payment_response_id = payment_response_id;
    final l$payment_amount = payment_amount;
    final l$order_items = order_items;
    return Object.hashAll([
      l$id,
      l$user_id,
      l$delivery_fee,
      l$address_id,
      l$payment_response_id,
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
    int? id,
    String? user_id,
    double? delivery_fee,
    int? address_id,
    String? payment_response_id,
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
    Object? id = _undefined,
    Object? user_id = _undefined,
    Object? delivery_fee = _undefined,
    Object? address_id = _undefined,
    Object? payment_response_id = _undefined,
    Object? payment_amount = _undefined,
    Object? order_items = _undefined,
  }) =>
      _then(Variables$Mutation$CreateOrder._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as String),
        if (delivery_fee != _undefined && delivery_fee != null)
          'delivery_fee': (delivery_fee as double),
        if (address_id != _undefined && address_id != null)
          'address_id': (address_id as int),
        if (payment_response_id != _undefined && payment_response_id != null)
          'payment_response_id': (payment_response_id as String),
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
    int? id,
    String? user_id,
    double? delivery_fee,
    int? address_id,
    String? payment_response_id,
    double? payment_amount,
    List<Input$order_items_insert_input>? order_items,
  }) =>
      _res;
}

class Mutation$CreateOrder {
  Mutation$CreateOrder({
    required this.insert_orders,
    required this.insert_order_items,
    required this.delete_cart_items,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreateOrder.fromJson(Map<String, dynamic> json) {
    final l$insert_orders = json['insert_orders'];
    final l$insert_order_items = json['insert_order_items'];
    final l$delete_cart_items = json['delete_cart_items'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder(
      insert_orders: Mutation$CreateOrder$insert_orders.fromJson(
          (l$insert_orders as Map<String, dynamic>)),
      insert_order_items: Mutation$CreateOrder$insert_order_items.fromJson(
          (l$insert_order_items as Map<String, dynamic>)),
      delete_cart_items: Mutation$CreateOrder$delete_cart_items.fromJson(
          (l$delete_cart_items as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$CreateOrder$insert_orders insert_orders;

  final Mutation$CreateOrder$insert_order_items insert_order_items;

  final Mutation$CreateOrder$delete_cart_items delete_cart_items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_orders = insert_orders;
    _resultData['insert_orders'] = l$insert_orders.toJson();
    final l$insert_order_items = insert_order_items;
    _resultData['insert_order_items'] = l$insert_order_items.toJson();
    final l$delete_cart_items = delete_cart_items;
    _resultData['delete_cart_items'] = l$delete_cart_items.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_orders = insert_orders;
    final l$insert_order_items = insert_order_items;
    final l$delete_cart_items = delete_cart_items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_orders,
      l$insert_order_items,
      l$delete_cart_items,
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
    final l$delete_cart_items = delete_cart_items;
    final lOther$delete_cart_items = other.delete_cart_items;
    if (l$delete_cart_items != lOther$delete_cart_items) {
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
    Mutation$CreateOrder$delete_cart_items? delete_cart_items,
    String? $__typename,
  });
  CopyWith$Mutation$CreateOrder$insert_orders<TRes> get insert_orders;
  CopyWith$Mutation$CreateOrder$insert_order_items<TRes> get insert_order_items;
  CopyWith$Mutation$CreateOrder$delete_cart_items<TRes> get delete_cart_items;
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
    Object? delete_cart_items = _undefined,
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
        delete_cart_items:
            delete_cart_items == _undefined || delete_cart_items == null
                ? _instance.delete_cart_items
                : (delete_cart_items as Mutation$CreateOrder$delete_cart_items),
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

  CopyWith$Mutation$CreateOrder$delete_cart_items<TRes> get delete_cart_items {
    final local$delete_cart_items = _instance.delete_cart_items;
    return CopyWith$Mutation$CreateOrder$delete_cart_items(
        local$delete_cart_items, (e) => call(delete_cart_items: e));
  }
}

class _CopyWithStubImpl$Mutation$CreateOrder<TRes>
    implements CopyWith$Mutation$CreateOrder<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder(this._res);

  TRes _res;

  call({
    Mutation$CreateOrder$insert_orders? insert_orders,
    Mutation$CreateOrder$insert_order_items? insert_order_items,
    Mutation$CreateOrder$delete_cart_items? delete_cart_items,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$CreateOrder$insert_orders<TRes> get insert_orders =>
      CopyWith$Mutation$CreateOrder$insert_orders.stub(_res);
  CopyWith$Mutation$CreateOrder$insert_order_items<TRes>
      get insert_order_items =>
          CopyWith$Mutation$CreateOrder$insert_order_items.stub(_res);
  CopyWith$Mutation$CreateOrder$delete_cart_items<TRes> get delete_cart_items =>
      CopyWith$Mutation$CreateOrder$delete_cart_items.stub(_res);
}

const documentNodeMutationCreateOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateOrder'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'user_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
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
        variable: VariableNode(name: NameNode(value: 'address_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'bigint'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'payment_response_id')),
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
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'user_id'),
                value: VariableNode(name: NameNode(value: 'user_id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'delivery_fee'),
                value: VariableNode(name: NameNode(value: 'delivery_fee')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'address_id'),
                value: VariableNode(name: NameNode(value: 'address_id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'payment_response_id'),
                value:
                    VariableNode(name: NameNode(value: 'payment_response_id')),
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
        name: NameNode(value: 'delete_cart_items'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'user_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'user_id')),
                  )
                ]),
              )
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

class Mutation$CreateOrder$delete_cart_items {
  Mutation$CreateOrder$delete_cart_items({
    required this.affected_rows,
    this.$__typename = 'CartItemResponse',
  });

  factory Mutation$CreateOrder$delete_cart_items.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$CreateOrder$delete_cart_items(
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
    if (!(other is Mutation$CreateOrder$delete_cart_items) ||
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

extension UtilityExtension$Mutation$CreateOrder$delete_cart_items
    on Mutation$CreateOrder$delete_cart_items {
  CopyWith$Mutation$CreateOrder$delete_cart_items<
          Mutation$CreateOrder$delete_cart_items>
      get copyWith => CopyWith$Mutation$CreateOrder$delete_cart_items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreateOrder$delete_cart_items<TRes> {
  factory CopyWith$Mutation$CreateOrder$delete_cart_items(
    Mutation$CreateOrder$delete_cart_items instance,
    TRes Function(Mutation$CreateOrder$delete_cart_items) then,
  ) = _CopyWithImpl$Mutation$CreateOrder$delete_cart_items;

  factory CopyWith$Mutation$CreateOrder$delete_cart_items.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreateOrder$delete_cart_items;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$CreateOrder$delete_cart_items<TRes>
    implements CopyWith$Mutation$CreateOrder$delete_cart_items<TRes> {
  _CopyWithImpl$Mutation$CreateOrder$delete_cart_items(
    this._instance,
    this._then,
  );

  final Mutation$CreateOrder$delete_cart_items _instance;

  final TRes Function(Mutation$CreateOrder$delete_cart_items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreateOrder$delete_cart_items(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$CreateOrder$delete_cart_items<TRes>
    implements CopyWith$Mutation$CreateOrder$delete_cart_items<TRes> {
  _CopyWithStubImpl$Mutation$CreateOrder$delete_cart_items(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}
