import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Query$FetchCart {
  Query$FetchCart({
    this.cart,
    this.$__typename = 'Query',
  });

  factory Query$FetchCart.fromJson(Map<String, dynamic> json) {
    final l$cart = json['cart'];
    final l$$__typename = json['__typename'];
    return Query$FetchCart(
      cart: l$cart == null
          ? null
          : Query$FetchCart$cart.fromJson((l$cart as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FetchCart$cart? cart;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cart = cart;
    _resultData['cart'] = l$cart?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cart = cart;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cart,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchCart) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cart = cart;
    final lOther$cart = other.cart;
    if (l$cart != lOther$cart) {
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

extension UtilityExtension$Query$FetchCart on Query$FetchCart {
  CopyWith$Query$FetchCart<Query$FetchCart> get copyWith =>
      CopyWith$Query$FetchCart(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchCart<TRes> {
  factory CopyWith$Query$FetchCart(
    Query$FetchCart instance,
    TRes Function(Query$FetchCart) then,
  ) = _CopyWithImpl$Query$FetchCart;

  factory CopyWith$Query$FetchCart.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCart;

  TRes call({
    Query$FetchCart$cart? cart,
    String? $__typename,
  });
  CopyWith$Query$FetchCart$cart<TRes> get cart;
}

class _CopyWithImpl$Query$FetchCart<TRes>
    implements CopyWith$Query$FetchCart<TRes> {
  _CopyWithImpl$Query$FetchCart(
    this._instance,
    this._then,
  );

  final Query$FetchCart _instance;

  final TRes Function(Query$FetchCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cart = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCart(
        cart: cart == _undefined
            ? _instance.cart
            : (cart as Query$FetchCart$cart?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$FetchCart$cart<TRes> get cart {
    final local$cart = _instance.cart;
    return local$cart == null
        ? CopyWith$Query$FetchCart$cart.stub(_then(_instance))
        : CopyWith$Query$FetchCart$cart(local$cart, (e) => call(cart: e));
  }
}

class _CopyWithStubImpl$Query$FetchCart<TRes>
    implements CopyWith$Query$FetchCart<TRes> {
  _CopyWithStubImpl$Query$FetchCart(this._res);

  TRes _res;

  call({
    Query$FetchCart$cart? cart,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$FetchCart$cart<TRes> get cart =>
      CopyWith$Query$FetchCart$cart.stub(_res);
}

const documentNodeQueryFetchCart = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FetchCart'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'cart'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'image'),
            alias: NameNode(value: 'image'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price'),
            alias: NameNode(value: 'price'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'product_title'),
            alias: NameNode(value: 'productTitle'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'uom_name'),
            alias: NameNode(value: 'uomName'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'uom_value'),
            alias: NameNode(value: 'uomValue'),
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
            name: NameNode(value: 'variant_id'),
            alias: NameNode(value: 'variantId'),
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
Query$FetchCart _parserFn$Query$FetchCart(Map<String, dynamic> data) =>
    Query$FetchCart.fromJson(data);
typedef OnQueryComplete$Query$FetchCart = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FetchCart?,
);

class Options$Query$FetchCart extends graphql.QueryOptions<Query$FetchCart> {
  Options$Query$FetchCart({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchCart? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FetchCart? onComplete,
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
                    data == null ? null : _parserFn$Query$FetchCart(data),
                  ),
          onError: onError,
          document: documentNodeQueryFetchCart,
          parserFn: _parserFn$Query$FetchCart,
        );

  final OnQueryComplete$Query$FetchCart? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FetchCart
    extends graphql.WatchQueryOptions<Query$FetchCart> {
  WatchOptions$Query$FetchCart({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FetchCart? typedOptimisticResult,
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
          document: documentNodeQueryFetchCart,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FetchCart,
        );
}

class FetchMoreOptions$Query$FetchCart extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FetchCart({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFetchCart,
        );
}

extension ClientExtension$Query$FetchCart on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FetchCart>> query$FetchCart(
          [Options$Query$FetchCart? options]) async =>
      await this.query(options ?? Options$Query$FetchCart());
  graphql.ObservableQuery<Query$FetchCart> watchQuery$FetchCart(
          [WatchOptions$Query$FetchCart? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FetchCart());
  void writeQuery$FetchCart({
    required Query$FetchCart data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryFetchCart)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FetchCart? readQuery$FetchCart({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryFetchCart)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FetchCart.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$FetchCart> useQuery$FetchCart(
        [Options$Query$FetchCart? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$FetchCart());
graphql.ObservableQuery<Query$FetchCart> useWatchQuery$FetchCart(
        [WatchOptions$Query$FetchCart? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$FetchCart());

class Query$FetchCart$Widget extends graphql_flutter.Query<Query$FetchCart> {
  Query$FetchCart$Widget({
    widgets.Key? key,
    Options$Query$FetchCart? options,
    required graphql_flutter.QueryBuilder<Query$FetchCart> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$FetchCart(),
          builder: builder,
        );
}

class Query$FetchCart$cart {
  Query$FetchCart$cart({
    required this.image,
    required this.price,
    required this.productTitle,
    this.uomName,
    this.uomValue,
    required this.userId,
    required this.variantId,
    this.$__typename = 'cart',
  });

  factory Query$FetchCart$cart.fromJson(Map<String, dynamic> json) {
    final l$image = json['image'];
    final l$price = json['price'];
    final l$productTitle = json['productTitle'];
    final l$uomName = json['uomName'];
    final l$uomValue = json['uomValue'];
    final l$userId = json['userId'];
    final l$variantId = json['variantId'];
    final l$$__typename = json['__typename'];
    return Query$FetchCart$cart(
      image: (l$image as String),
      price: (l$price as num).toDouble(),
      productTitle: (l$productTitle as String),
      uomName: (l$uomName as String?),
      uomValue: (l$uomValue as String?),
      userId: (l$userId as String),
      variantId: (l$variantId as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String image;

  final double price;

  final String productTitle;

  final String? uomName;

  final String? uomValue;

  final String userId;

  final int variantId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$image = image;
    _resultData['image'] = l$image;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$productTitle = productTitle;
    _resultData['productTitle'] = l$productTitle;
    final l$uomName = uomName;
    _resultData['uomName'] = l$uomName;
    final l$uomValue = uomValue;
    _resultData['uomValue'] = l$uomValue;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$variantId = variantId;
    _resultData['variantId'] = l$variantId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$image = image;
    final l$price = price;
    final l$productTitle = productTitle;
    final l$uomName = uomName;
    final l$uomValue = uomValue;
    final l$userId = userId;
    final l$variantId = variantId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$image,
      l$price,
      l$productTitle,
      l$uomName,
      l$uomValue,
      l$userId,
      l$variantId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$FetchCart$cart) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$productTitle = productTitle;
    final lOther$productTitle = other.productTitle;
    if (l$productTitle != lOther$productTitle) {
      return false;
    }
    final l$uomName = uomName;
    final lOther$uomName = other.uomName;
    if (l$uomName != lOther$uomName) {
      return false;
    }
    final l$uomValue = uomValue;
    final lOther$uomValue = other.uomValue;
    if (l$uomValue != lOther$uomValue) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$variantId = variantId;
    final lOther$variantId = other.variantId;
    if (l$variantId != lOther$variantId) {
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

extension UtilityExtension$Query$FetchCart$cart on Query$FetchCart$cart {
  CopyWith$Query$FetchCart$cart<Query$FetchCart$cart> get copyWith =>
      CopyWith$Query$FetchCart$cart(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FetchCart$cart<TRes> {
  factory CopyWith$Query$FetchCart$cart(
    Query$FetchCart$cart instance,
    TRes Function(Query$FetchCart$cart) then,
  ) = _CopyWithImpl$Query$FetchCart$cart;

  factory CopyWith$Query$FetchCart$cart.stub(TRes res) =
      _CopyWithStubImpl$Query$FetchCart$cart;

  TRes call({
    String? image,
    double? price,
    String? productTitle,
    String? uomName,
    String? uomValue,
    String? userId,
    int? variantId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FetchCart$cart<TRes>
    implements CopyWith$Query$FetchCart$cart<TRes> {
  _CopyWithImpl$Query$FetchCart$cart(
    this._instance,
    this._then,
  );

  final Query$FetchCart$cart _instance;

  final TRes Function(Query$FetchCart$cart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? image = _undefined,
    Object? price = _undefined,
    Object? productTitle = _undefined,
    Object? uomName = _undefined,
    Object? uomValue = _undefined,
    Object? userId = _undefined,
    Object? variantId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FetchCart$cart(
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
        productTitle: productTitle == _undefined || productTitle == null
            ? _instance.productTitle
            : (productTitle as String),
        uomName:
            uomName == _undefined ? _instance.uomName : (uomName as String?),
        uomValue:
            uomValue == _undefined ? _instance.uomValue : (uomValue as String?),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        variantId: variantId == _undefined || variantId == null
            ? _instance.variantId
            : (variantId as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FetchCart$cart<TRes>
    implements CopyWith$Query$FetchCart$cart<TRes> {
  _CopyWithStubImpl$Query$FetchCart$cart(this._res);

  TRes _res;

  call({
    String? image,
    double? price,
    String? productTitle,
    String? uomName,
    String? uomValue,
    String? userId,
    int? variantId,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$CartSubscription {
  Subscription$CartSubscription({
    this.cart,
    this.$__typename = 'Subscription',
  });

  factory Subscription$CartSubscription.fromJson(Map<String, dynamic> json) {
    final l$cart = json['cart'];
    final l$$__typename = json['__typename'];
    return Subscription$CartSubscription(
      cart: l$cart == null
          ? null
          : Subscription$CartSubscription$cart.fromJson(
              (l$cart as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Subscription$CartSubscription$cart? cart;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cart = cart;
    _resultData['cart'] = l$cart?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cart = cart;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cart,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$CartSubscription) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cart = cart;
    final lOther$cart = other.cart;
    if (l$cart != lOther$cart) {
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

extension UtilityExtension$Subscription$CartSubscription
    on Subscription$CartSubscription {
  CopyWith$Subscription$CartSubscription<Subscription$CartSubscription>
      get copyWith => CopyWith$Subscription$CartSubscription(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$CartSubscription<TRes> {
  factory CopyWith$Subscription$CartSubscription(
    Subscription$CartSubscription instance,
    TRes Function(Subscription$CartSubscription) then,
  ) = _CopyWithImpl$Subscription$CartSubscription;

  factory CopyWith$Subscription$CartSubscription.stub(TRes res) =
      _CopyWithStubImpl$Subscription$CartSubscription;

  TRes call({
    Subscription$CartSubscription$cart? cart,
    String? $__typename,
  });
  CopyWith$Subscription$CartSubscription$cart<TRes> get cart;
}

class _CopyWithImpl$Subscription$CartSubscription<TRes>
    implements CopyWith$Subscription$CartSubscription<TRes> {
  _CopyWithImpl$Subscription$CartSubscription(
    this._instance,
    this._then,
  );

  final Subscription$CartSubscription _instance;

  final TRes Function(Subscription$CartSubscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cart = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$CartSubscription(
        cart: cart == _undefined
            ? _instance.cart
            : (cart as Subscription$CartSubscription$cart?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$CartSubscription$cart<TRes> get cart {
    final local$cart = _instance.cart;
    return local$cart == null
        ? CopyWith$Subscription$CartSubscription$cart.stub(_then(_instance))
        : CopyWith$Subscription$CartSubscription$cart(
            local$cart, (e) => call(cart: e));
  }
}

class _CopyWithStubImpl$Subscription$CartSubscription<TRes>
    implements CopyWith$Subscription$CartSubscription<TRes> {
  _CopyWithStubImpl$Subscription$CartSubscription(this._res);

  TRes _res;

  call({
    Subscription$CartSubscription$cart? cart,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$CartSubscription$cart<TRes> get cart =>
      CopyWith$Subscription$CartSubscription$cart.stub(_res);
}

const documentNodeSubscriptionCartSubscription = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'CartSubscription'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'cart'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'image'),
            alias: NameNode(value: 'image'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price'),
            alias: NameNode(value: 'price'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'product_title'),
            alias: NameNode(value: 'productTitle'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'uom_name'),
            alias: NameNode(value: 'uomName'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'uom_value'),
            alias: NameNode(value: 'uomValue'),
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
            name: NameNode(value: 'variant_id'),
            alias: NameNode(value: 'variantId'),
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
Subscription$CartSubscription _parserFn$Subscription$CartSubscription(
        Map<String, dynamic> data) =>
    Subscription$CartSubscription.fromJson(data);

class Options$Subscription$CartSubscription
    extends graphql.SubscriptionOptions<Subscription$CartSubscription> {
  Options$Subscription$CartSubscription({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$CartSubscription? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionCartSubscription,
          parserFn: _parserFn$Subscription$CartSubscription,
        );
}

class WatchOptions$Subscription$CartSubscription
    extends graphql.WatchQueryOptions<Subscription$CartSubscription> {
  WatchOptions$Subscription$CartSubscription({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$CartSubscription? typedOptimisticResult,
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
          document: documentNodeSubscriptionCartSubscription,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$CartSubscription,
        );
}

class FetchMoreOptions$Subscription$CartSubscription
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$CartSubscription(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionCartSubscription,
        );
}

extension ClientExtension$Subscription$CartSubscription
    on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$CartSubscription>>
      subscribe$CartSubscription(
              [Options$Subscription$CartSubscription? options]) =>
          this.subscribe(options ?? Options$Subscription$CartSubscription());
  graphql.ObservableQuery<Subscription$CartSubscription>
      watchSubscription$CartSubscription(
              [WatchOptions$Subscription$CartSubscription? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Subscription$CartSubscription());
}

graphql.QueryResult<Subscription$CartSubscription>
    useSubscription$CartSubscription(
            Options$Subscription$CartSubscription options) =>
        graphql_flutter.useSubscription(options);

class Subscription$CartSubscription$Widget
    extends graphql_flutter.Subscription<Subscription$CartSubscription> {
  Subscription$CartSubscription$Widget({
    widgets.Key? key,
    Options$Subscription$CartSubscription? options,
    required graphql_flutter.SubscriptionBuilder<Subscription$CartSubscription>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$CartSubscription>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$CartSubscription(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$CartSubscription$cart {
  Subscription$CartSubscription$cart({
    required this.image,
    required this.price,
    required this.productTitle,
    this.uomName,
    this.uomValue,
    required this.userId,
    required this.variantId,
    this.$__typename = 'cart',
  });

  factory Subscription$CartSubscription$cart.fromJson(
      Map<String, dynamic> json) {
    final l$image = json['image'];
    final l$price = json['price'];
    final l$productTitle = json['productTitle'];
    final l$uomName = json['uomName'];
    final l$uomValue = json['uomValue'];
    final l$userId = json['userId'];
    final l$variantId = json['variantId'];
    final l$$__typename = json['__typename'];
    return Subscription$CartSubscription$cart(
      image: (l$image as String),
      price: (l$price as num).toDouble(),
      productTitle: (l$productTitle as String),
      uomName: (l$uomName as String?),
      uomValue: (l$uomValue as String?),
      userId: (l$userId as String),
      variantId: (l$variantId as int),
      $__typename: (l$$__typename as String),
    );
  }

  final String image;

  final double price;

  final String productTitle;

  final String? uomName;

  final String? uomValue;

  final String userId;

  final int variantId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$image = image;
    _resultData['image'] = l$image;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$productTitle = productTitle;
    _resultData['productTitle'] = l$productTitle;
    final l$uomName = uomName;
    _resultData['uomName'] = l$uomName;
    final l$uomValue = uomValue;
    _resultData['uomValue'] = l$uomValue;
    final l$userId = userId;
    _resultData['userId'] = l$userId;
    final l$variantId = variantId;
    _resultData['variantId'] = l$variantId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$image = image;
    final l$price = price;
    final l$productTitle = productTitle;
    final l$uomName = uomName;
    final l$uomValue = uomValue;
    final l$userId = userId;
    final l$variantId = variantId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$image,
      l$price,
      l$productTitle,
      l$uomName,
      l$uomValue,
      l$userId,
      l$variantId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$CartSubscription$cart) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$productTitle = productTitle;
    final lOther$productTitle = other.productTitle;
    if (l$productTitle != lOther$productTitle) {
      return false;
    }
    final l$uomName = uomName;
    final lOther$uomName = other.uomName;
    if (l$uomName != lOther$uomName) {
      return false;
    }
    final l$uomValue = uomValue;
    final lOther$uomValue = other.uomValue;
    if (l$uomValue != lOther$uomValue) {
      return false;
    }
    final l$userId = userId;
    final lOther$userId = other.userId;
    if (l$userId != lOther$userId) {
      return false;
    }
    final l$variantId = variantId;
    final lOther$variantId = other.variantId;
    if (l$variantId != lOther$variantId) {
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

extension UtilityExtension$Subscription$CartSubscription$cart
    on Subscription$CartSubscription$cart {
  CopyWith$Subscription$CartSubscription$cart<
          Subscription$CartSubscription$cart>
      get copyWith => CopyWith$Subscription$CartSubscription$cart(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$CartSubscription$cart<TRes> {
  factory CopyWith$Subscription$CartSubscription$cart(
    Subscription$CartSubscription$cart instance,
    TRes Function(Subscription$CartSubscription$cart) then,
  ) = _CopyWithImpl$Subscription$CartSubscription$cart;

  factory CopyWith$Subscription$CartSubscription$cart.stub(TRes res) =
      _CopyWithStubImpl$Subscription$CartSubscription$cart;

  TRes call({
    String? image,
    double? price,
    String? productTitle,
    String? uomName,
    String? uomValue,
    String? userId,
    int? variantId,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$CartSubscription$cart<TRes>
    implements CopyWith$Subscription$CartSubscription$cart<TRes> {
  _CopyWithImpl$Subscription$CartSubscription$cart(
    this._instance,
    this._then,
  );

  final Subscription$CartSubscription$cart _instance;

  final TRes Function(Subscription$CartSubscription$cart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? image = _undefined,
    Object? price = _undefined,
    Object? productTitle = _undefined,
    Object? uomName = _undefined,
    Object? uomValue = _undefined,
    Object? userId = _undefined,
    Object? variantId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$CartSubscription$cart(
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
        productTitle: productTitle == _undefined || productTitle == null
            ? _instance.productTitle
            : (productTitle as String),
        uomName:
            uomName == _undefined ? _instance.uomName : (uomName as String?),
        uomValue:
            uomValue == _undefined ? _instance.uomValue : (uomValue as String?),
        userId: userId == _undefined || userId == null
            ? _instance.userId
            : (userId as String),
        variantId: variantId == _undefined || variantId == null
            ? _instance.variantId
            : (variantId as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$CartSubscription$cart<TRes>
    implements CopyWith$Subscription$CartSubscription$cart<TRes> {
  _CopyWithStubImpl$Subscription$CartSubscription$cart(this._res);

  TRes _res;

  call({
    String? image,
    double? price,
    String? productTitle,
    String? uomName,
    String? uomValue,
    String? userId,
    int? variantId,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$AddToCart {
  factory Variables$Mutation$AddToCart({
    required int product_id,
    required double price,
    required String product_title,
    required String user_id,
    required int variant_id,
    String? uom_value,
    String? uom_name,
    required String image,
    double? mrp,
    int? cart_quantity,
  }) =>
      Variables$Mutation$AddToCart._({
        r'product_id': product_id,
        r'price': price,
        r'product_title': product_title,
        r'user_id': user_id,
        r'variant_id': variant_id,
        if (uom_value != null) r'uom_value': uom_value,
        if (uom_name != null) r'uom_name': uom_name,
        r'image': image,
        if (mrp != null) r'mrp': mrp,
        if (cart_quantity != null) r'cart_quantity': cart_quantity,
      });

  Variables$Mutation$AddToCart._(this._$data);

  factory Variables$Mutation$AddToCart.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$product_id = data['product_id'];
    result$data['product_id'] = (l$product_id as int);
    final l$price = data['price'];
    result$data['price'] = (l$price as num).toDouble();
    final l$product_title = data['product_title'];
    result$data['product_title'] = (l$product_title as String);
    final l$user_id = data['user_id'];
    result$data['user_id'] = (l$user_id as String);
    final l$variant_id = data['variant_id'];
    result$data['variant_id'] = (l$variant_id as int);
    if (data.containsKey('uom_value')) {
      final l$uom_value = data['uom_value'];
      result$data['uom_value'] = (l$uom_value as String?);
    }
    if (data.containsKey('uom_name')) {
      final l$uom_name = data['uom_name'];
      result$data['uom_name'] = (l$uom_name as String?);
    }
    final l$image = data['image'];
    result$data['image'] = (l$image as String);
    if (data.containsKey('mrp')) {
      final l$mrp = data['mrp'];
      result$data['mrp'] = (l$mrp as num?)?.toDouble();
    }
    if (data.containsKey('cart_quantity')) {
      final l$cart_quantity = data['cart_quantity'];
      result$data['cart_quantity'] = (l$cart_quantity as int?);
    }
    return Variables$Mutation$AddToCart._(result$data);
  }

  Map<String, dynamic> _$data;

  int get product_id => (_$data['product_id'] as int);
  double get price => (_$data['price'] as double);
  String get product_title => (_$data['product_title'] as String);
  String get user_id => (_$data['user_id'] as String);
  int get variant_id => (_$data['variant_id'] as int);
  String? get uom_value => (_$data['uom_value'] as String?);
  String? get uom_name => (_$data['uom_name'] as String?);
  String get image => (_$data['image'] as String);
  double? get mrp => (_$data['mrp'] as double?);
  int? get cart_quantity => (_$data['cart_quantity'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$product_id = product_id;
    result$data['product_id'] = l$product_id;
    final l$price = price;
    result$data['price'] = l$price;
    final l$product_title = product_title;
    result$data['product_title'] = l$product_title;
    final l$user_id = user_id;
    result$data['user_id'] = l$user_id;
    final l$variant_id = variant_id;
    result$data['variant_id'] = l$variant_id;
    if (_$data.containsKey('uom_value')) {
      final l$uom_value = uom_value;
      result$data['uom_value'] = l$uom_value;
    }
    if (_$data.containsKey('uom_name')) {
      final l$uom_name = uom_name;
      result$data['uom_name'] = l$uom_name;
    }
    final l$image = image;
    result$data['image'] = l$image;
    if (_$data.containsKey('mrp')) {
      final l$mrp = mrp;
      result$data['mrp'] = l$mrp;
    }
    if (_$data.containsKey('cart_quantity')) {
      final l$cart_quantity = cart_quantity;
      result$data['cart_quantity'] = l$cart_quantity;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$AddToCart<Variables$Mutation$AddToCart>
      get copyWith => CopyWith$Variables$Mutation$AddToCart(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$AddToCart) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
      return false;
    }
    final l$product_title = product_title;
    final lOther$product_title = other.product_title;
    if (l$product_title != lOther$product_title) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    final l$variant_id = variant_id;
    final lOther$variant_id = other.variant_id;
    if (l$variant_id != lOther$variant_id) {
      return false;
    }
    final l$uom_value = uom_value;
    final lOther$uom_value = other.uom_value;
    if (_$data.containsKey('uom_value') !=
        other._$data.containsKey('uom_value')) {
      return false;
    }
    if (l$uom_value != lOther$uom_value) {
      return false;
    }
    final l$uom_name = uom_name;
    final lOther$uom_name = other.uom_name;
    if (_$data.containsKey('uom_name') !=
        other._$data.containsKey('uom_name')) {
      return false;
    }
    if (l$uom_name != lOther$uom_name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$mrp = mrp;
    final lOther$mrp = other.mrp;
    if (_$data.containsKey('mrp') != other._$data.containsKey('mrp')) {
      return false;
    }
    if (l$mrp != lOther$mrp) {
      return false;
    }
    final l$cart_quantity = cart_quantity;
    final lOther$cart_quantity = other.cart_quantity;
    if (_$data.containsKey('cart_quantity') !=
        other._$data.containsKey('cart_quantity')) {
      return false;
    }
    if (l$cart_quantity != lOther$cart_quantity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$product_id = product_id;
    final l$price = price;
    final l$product_title = product_title;
    final l$user_id = user_id;
    final l$variant_id = variant_id;
    final l$uom_value = uom_value;
    final l$uom_name = uom_name;
    final l$image = image;
    final l$mrp = mrp;
    final l$cart_quantity = cart_quantity;
    return Object.hashAll([
      l$product_id,
      l$price,
      l$product_title,
      l$user_id,
      l$variant_id,
      _$data.containsKey('uom_value') ? l$uom_value : const {},
      _$data.containsKey('uom_name') ? l$uom_name : const {},
      l$image,
      _$data.containsKey('mrp') ? l$mrp : const {},
      _$data.containsKey('cart_quantity') ? l$cart_quantity : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$AddToCart<TRes> {
  factory CopyWith$Variables$Mutation$AddToCart(
    Variables$Mutation$AddToCart instance,
    TRes Function(Variables$Mutation$AddToCart) then,
  ) = _CopyWithImpl$Variables$Mutation$AddToCart;

  factory CopyWith$Variables$Mutation$AddToCart.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$AddToCart;

  TRes call({
    int? product_id,
    double? price,
    String? product_title,
    String? user_id,
    int? variant_id,
    String? uom_value,
    String? uom_name,
    String? image,
    double? mrp,
    int? cart_quantity,
  });
}

class _CopyWithImpl$Variables$Mutation$AddToCart<TRes>
    implements CopyWith$Variables$Mutation$AddToCart<TRes> {
  _CopyWithImpl$Variables$Mutation$AddToCart(
    this._instance,
    this._then,
  );

  final Variables$Mutation$AddToCart _instance;

  final TRes Function(Variables$Mutation$AddToCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? product_id = _undefined,
    Object? price = _undefined,
    Object? product_title = _undefined,
    Object? user_id = _undefined,
    Object? variant_id = _undefined,
    Object? uom_value = _undefined,
    Object? uom_name = _undefined,
    Object? image = _undefined,
    Object? mrp = _undefined,
    Object? cart_quantity = _undefined,
  }) =>
      _then(Variables$Mutation$AddToCart._({
        ..._instance._$data,
        if (product_id != _undefined && product_id != null)
          'product_id': (product_id as int),
        if (price != _undefined && price != null) 'price': (price as double),
        if (product_title != _undefined && product_title != null)
          'product_title': (product_title as String),
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as String),
        if (variant_id != _undefined && variant_id != null)
          'variant_id': (variant_id as int),
        if (uom_value != _undefined) 'uom_value': (uom_value as String?),
        if (uom_name != _undefined) 'uom_name': (uom_name as String?),
        if (image != _undefined && image != null) 'image': (image as String),
        if (mrp != _undefined) 'mrp': (mrp as double?),
        if (cart_quantity != _undefined)
          'cart_quantity': (cart_quantity as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AddToCart<TRes>
    implements CopyWith$Variables$Mutation$AddToCart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddToCart(this._res);

  TRes _res;

  call({
    int? product_id,
    double? price,
    String? product_title,
    String? user_id,
    int? variant_id,
    String? uom_value,
    String? uom_name,
    String? image,
    double? mrp,
    int? cart_quantity,
  }) =>
      _res;
}

class Mutation$AddToCart {
  Mutation$AddToCart({
    required this.insert_cart,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddToCart.fromJson(Map<String, dynamic> json) {
    final l$insert_cart = json['insert_cart'];
    final l$$__typename = json['__typename'];
    return Mutation$AddToCart(
      insert_cart: Mutation$AddToCart$insert_cart.fromJson(
          (l$insert_cart as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddToCart$insert_cart insert_cart;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_cart = insert_cart;
    _resultData['insert_cart'] = l$insert_cart.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_cart = insert_cart;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_cart,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$AddToCart) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$insert_cart = insert_cart;
    final lOther$insert_cart = other.insert_cart;
    if (l$insert_cart != lOther$insert_cart) {
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

extension UtilityExtension$Mutation$AddToCart on Mutation$AddToCart {
  CopyWith$Mutation$AddToCart<Mutation$AddToCart> get copyWith =>
      CopyWith$Mutation$AddToCart(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$AddToCart<TRes> {
  factory CopyWith$Mutation$AddToCart(
    Mutation$AddToCart instance,
    TRes Function(Mutation$AddToCart) then,
  ) = _CopyWithImpl$Mutation$AddToCart;

  factory CopyWith$Mutation$AddToCart.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart;

  TRes call({
    Mutation$AddToCart$insert_cart? insert_cart,
    String? $__typename,
  });
  CopyWith$Mutation$AddToCart$insert_cart<TRes> get insert_cart;
}

class _CopyWithImpl$Mutation$AddToCart<TRes>
    implements CopyWith$Mutation$AddToCart<TRes> {
  _CopyWithImpl$Mutation$AddToCart(
    this._instance,
    this._then,
  );

  final Mutation$AddToCart _instance;

  final TRes Function(Mutation$AddToCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? insert_cart = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddToCart(
        insert_cart: insert_cart == _undefined || insert_cart == null
            ? _instance.insert_cart
            : (insert_cart as Mutation$AddToCart$insert_cart),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$AddToCart$insert_cart<TRes> get insert_cart {
    final local$insert_cart = _instance.insert_cart;
    return CopyWith$Mutation$AddToCart$insert_cart(
        local$insert_cart, (e) => call(insert_cart: e));
  }
}

class _CopyWithStubImpl$Mutation$AddToCart<TRes>
    implements CopyWith$Mutation$AddToCart<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart(this._res);

  TRes _res;

  call({
    Mutation$AddToCart$insert_cart? insert_cart,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$AddToCart$insert_cart<TRes> get insert_cart =>
      CopyWith$Mutation$AddToCart$insert_cart.stub(_res);
}

const documentNodeMutationAddToCart = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'AddToCart'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'product_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'bigint'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'price')),
        type: NamedTypeNode(
          name: NameNode(value: 'numeric'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'product_title')),
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
        variable: VariableNode(name: NameNode(value: 'variant_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'bigint'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'uom_value')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'uom_name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'image')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mrp')),
        type: NamedTypeNode(
          name: NameNode(value: 'numeric'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cart_quantity')),
        type: NamedTypeNode(
          name: NameNode(value: 'smallint'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'insert_cart'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'objects'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'product_id'),
                value: VariableNode(name: NameNode(value: 'product_id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'price'),
                value: VariableNode(name: NameNode(value: 'price')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'product_title'),
                value: VariableNode(name: NameNode(value: 'product_title')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'user_id'),
                value: VariableNode(name: NameNode(value: 'user_id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'variant_id'),
                value: VariableNode(name: NameNode(value: 'variant_id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'uom_value'),
                value: VariableNode(name: NameNode(value: 'uom_value')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'uom_name'),
                value: VariableNode(name: NameNode(value: 'uom_name')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'image'),
                value: VariableNode(name: NameNode(value: 'image')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'mrp'),
                value: VariableNode(name: NameNode(value: 'mrp')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'cart_quantity'),
                value: VariableNode(name: NameNode(value: 'cart_quantity')),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Mutation$AddToCart _parserFn$Mutation$AddToCart(Map<String, dynamic> data) =>
    Mutation$AddToCart.fromJson(data);
typedef OnMutationCompleted$Mutation$AddToCart = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$AddToCart?,
);

class Options$Mutation$AddToCart
    extends graphql.MutationOptions<Mutation$AddToCart> {
  Options$Mutation$AddToCart({
    String? operationName,
    required Variables$Mutation$AddToCart variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddToCart? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddToCart? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddToCart>? update,
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
                    data == null ? null : _parserFn$Mutation$AddToCart(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddToCart,
          parserFn: _parserFn$Mutation$AddToCart,
        );

  final OnMutationCompleted$Mutation$AddToCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$AddToCart
    extends graphql.WatchQueryOptions<Mutation$AddToCart> {
  WatchOptions$Mutation$AddToCart({
    String? operationName,
    required Variables$Mutation$AddToCart variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddToCart? typedOptimisticResult,
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
          document: documentNodeMutationAddToCart,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$AddToCart,
        );
}

extension ClientExtension$Mutation$AddToCart on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$AddToCart>> mutate$AddToCart(
          Options$Mutation$AddToCart options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$AddToCart> watchMutation$AddToCart(
          WatchOptions$Mutation$AddToCart options) =>
      this.watchMutation(options);
}

class Mutation$AddToCart$HookResult {
  Mutation$AddToCart$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$AddToCart runMutation;

  final graphql.QueryResult<Mutation$AddToCart> result;
}

Mutation$AddToCart$HookResult useMutation$AddToCart(
    [WidgetOptions$Mutation$AddToCart? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$AddToCart());
  return Mutation$AddToCart$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$AddToCart> useWatchMutation$AddToCart(
        WatchOptions$Mutation$AddToCart options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$AddToCart
    extends graphql.MutationOptions<Mutation$AddToCart> {
  WidgetOptions$Mutation$AddToCart({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$AddToCart? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$AddToCart? onCompleted,
    graphql.OnMutationUpdate<Mutation$AddToCart>? update,
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
                    data == null ? null : _parserFn$Mutation$AddToCart(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationAddToCart,
          parserFn: _parserFn$Mutation$AddToCart,
        );

  final OnMutationCompleted$Mutation$AddToCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$AddToCart
    = graphql.MultiSourceResult<Mutation$AddToCart> Function(
  Variables$Mutation$AddToCart, {
  Object? optimisticResult,
  Mutation$AddToCart? typedOptimisticResult,
});
typedef Builder$Mutation$AddToCart = widgets.Widget Function(
  RunMutation$Mutation$AddToCart,
  graphql.QueryResult<Mutation$AddToCart>?,
);

class Mutation$AddToCart$Widget
    extends graphql_flutter.Mutation<Mutation$AddToCart> {
  Mutation$AddToCart$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$AddToCart? options,
    required Builder$Mutation$AddToCart builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$AddToCart(),
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

class Mutation$AddToCart$insert_cart {
  Mutation$AddToCart$insert_cart({
    required this.affected_rows,
    this.$__typename = 'InsertCartResponse',
  });

  factory Mutation$AddToCart$insert_cart.fromJson(Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$AddToCart$insert_cart(
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
    if (!(other is Mutation$AddToCart$insert_cart) ||
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

extension UtilityExtension$Mutation$AddToCart$insert_cart
    on Mutation$AddToCart$insert_cart {
  CopyWith$Mutation$AddToCart$insert_cart<Mutation$AddToCart$insert_cart>
      get copyWith => CopyWith$Mutation$AddToCart$insert_cart(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddToCart$insert_cart<TRes> {
  factory CopyWith$Mutation$AddToCart$insert_cart(
    Mutation$AddToCart$insert_cart instance,
    TRes Function(Mutation$AddToCart$insert_cart) then,
  ) = _CopyWithImpl$Mutation$AddToCart$insert_cart;

  factory CopyWith$Mutation$AddToCart$insert_cart.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$insert_cart;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddToCart$insert_cart<TRes>
    implements CopyWith$Mutation$AddToCart$insert_cart<TRes> {
  _CopyWithImpl$Mutation$AddToCart$insert_cart(
    this._instance,
    this._then,
  );

  final Mutation$AddToCart$insert_cart _instance;

  final TRes Function(Mutation$AddToCart$insert_cart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddToCart$insert_cart(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AddToCart$insert_cart<TRes>
    implements CopyWith$Mutation$AddToCart$insert_cart<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$insert_cart(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}
