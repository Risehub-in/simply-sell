import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Subscription$getCartSubscription {
  Subscription$getCartSubscription({this.cart_items});

  factory Subscription$getCartSubscription.fromJson(Map<String, dynamic> json) {
    final l$cart_items = json['cart_items'];
    return Subscription$getCartSubscription(
        cart_items: l$cart_items == null
            ? null
            : Subscription$getCartSubscription$cart_items.fromJson(
                (l$cart_items as Map<String, dynamic>)));
  }

  final Subscription$getCartSubscription$cart_items? cart_items;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cart_items = cart_items;
    _resultData['cart_items'] = l$cart_items?.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cart_items = cart_items;
    return Object.hashAll([l$cart_items]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getCartSubscription) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$cart_items = cart_items;
    final lOther$cart_items = other.cart_items;
    if (l$cart_items != lOther$cart_items) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$getCartSubscription
    on Subscription$getCartSubscription {
  CopyWith$Subscription$getCartSubscription<Subscription$getCartSubscription>
      get copyWith => CopyWith$Subscription$getCartSubscription(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getCartSubscription<TRes> {
  factory CopyWith$Subscription$getCartSubscription(
    Subscription$getCartSubscription instance,
    TRes Function(Subscription$getCartSubscription) then,
  ) = _CopyWithImpl$Subscription$getCartSubscription;

  factory CopyWith$Subscription$getCartSubscription.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getCartSubscription;

  TRes call({Subscription$getCartSubscription$cart_items? cart_items});
  CopyWith$Subscription$getCartSubscription$cart_items<TRes> get cart_items;
}

class _CopyWithImpl$Subscription$getCartSubscription<TRes>
    implements CopyWith$Subscription$getCartSubscription<TRes> {
  _CopyWithImpl$Subscription$getCartSubscription(
    this._instance,
    this._then,
  );

  final Subscription$getCartSubscription _instance;

  final TRes Function(Subscription$getCartSubscription) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? cart_items = _undefined}) =>
      _then(Subscription$getCartSubscription(
          cart_items: cart_items == _undefined
              ? _instance.cart_items
              : (cart_items as Subscription$getCartSubscription$cart_items?)));
  CopyWith$Subscription$getCartSubscription$cart_items<TRes> get cart_items {
    final local$cart_items = _instance.cart_items;
    return local$cart_items == null
        ? CopyWith$Subscription$getCartSubscription$cart_items.stub(
            _then(_instance))
        : CopyWith$Subscription$getCartSubscription$cart_items(
            local$cart_items, (e) => call(cart_items: e));
  }
}

class _CopyWithStubImpl$Subscription$getCartSubscription<TRes>
    implements CopyWith$Subscription$getCartSubscription<TRes> {
  _CopyWithStubImpl$Subscription$getCartSubscription(this._res);

  TRes _res;

  call({Subscription$getCartSubscription$cart_items? cart_items}) => _res;
  CopyWith$Subscription$getCartSubscription$cart_items<TRes> get cart_items =>
      CopyWith$Subscription$getCartSubscription$cart_items.stub(_res);
}

const documentNodeSubscriptiongetCartSubscription = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'getCartSubscription'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'cart_items'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'order_by'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'created_at'),
                value: EnumValueNode(name: NameNode(value: 'asc')),
              )
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
            name: NameNode(value: 'product_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'product_title'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'uom_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'uom_value'),
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
            name: NameNode(value: 'variant_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'cart_quantity'),
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
      )
    ]),
  ),
]);
Subscription$getCartSubscription _parserFn$Subscription$getCartSubscription(
        Map<String, dynamic> data) =>
    Subscription$getCartSubscription.fromJson(data);

class Options$Subscription$getCartSubscription
    extends graphql.SubscriptionOptions<Subscription$getCartSubscription> {
  Options$Subscription$getCartSubscription({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$getCartSubscription? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptiongetCartSubscription,
          parserFn: _parserFn$Subscription$getCartSubscription,
        );
}

class WatchOptions$Subscription$getCartSubscription
    extends graphql.WatchQueryOptions<Subscription$getCartSubscription> {
  WatchOptions$Subscription$getCartSubscription({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$getCartSubscription? typedOptimisticResult,
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
          document: documentNodeSubscriptiongetCartSubscription,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$getCartSubscription,
        );
}

class FetchMoreOptions$Subscription$getCartSubscription
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$getCartSubscription(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptiongetCartSubscription,
        );
}

extension ClientExtension$Subscription$getCartSubscription
    on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$getCartSubscription>>
      subscribe$getCartSubscription(
              [Options$Subscription$getCartSubscription? options]) =>
          this.subscribe(options ?? Options$Subscription$getCartSubscription());
  graphql.ObservableQuery<Subscription$getCartSubscription>
      watchSubscription$getCartSubscription(
              [WatchOptions$Subscription$getCartSubscription? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Subscription$getCartSubscription());
}

graphql.QueryResult<Subscription$getCartSubscription>
    useSubscription$getCartSubscription(
            Options$Subscription$getCartSubscription options) =>
        graphql_flutter.useSubscription(options);

class Subscription$getCartSubscription$Widget
    extends graphql_flutter.Subscription<Subscription$getCartSubscription> {
  Subscription$getCartSubscription$Widget({
    widgets.Key? key,
    Options$Subscription$getCartSubscription? options,
    required graphql_flutter
        .SubscriptionBuilder<Subscription$getCartSubscription>
        builder,
    graphql_flutter.OnSubscriptionResult<Subscription$getCartSubscription>?
        onSubscriptionResult,
  }) : super(
          key: key,
          options: options ?? Options$Subscription$getCartSubscription(),
          builder: builder,
          onSubscriptionResult: onSubscriptionResult,
        );
}

class Subscription$getCartSubscription$cart_items {
  Subscription$getCartSubscription$cart_items({
    required this.id,
    required this.image,
    this.mrp,
    required this.price,
    required this.product_id,
    required this.product_title,
    this.uom_name,
    this.uom_value,
    required this.user_id,
    required this.variant_id,
    required this.cart_quantity,
    this.$__typename = 'CartItem',
  });

  factory Subscription$getCartSubscription$cart_items.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$image = json['image'];
    final l$mrp = json['mrp'];
    final l$price = json['price'];
    final l$product_id = json['product_id'];
    final l$product_title = json['product_title'];
    final l$uom_name = json['uom_name'];
    final l$uom_value = json['uom_value'];
    final l$user_id = json['user_id'];
    final l$variant_id = json['variant_id'];
    final l$cart_quantity = json['cart_quantity'];
    final l$$__typename = json['__typename'];
    return Subscription$getCartSubscription$cart_items(
      id: (l$id as int),
      image: (l$image as String),
      mrp: (l$mrp as num?)?.toDouble(),
      price: (l$price as num).toDouble(),
      product_id: (l$product_id as int),
      product_title: (l$product_title as String),
      uom_name: (l$uom_name as String?),
      uom_value: (l$uom_value as String?),
      user_id: (l$user_id as String),
      variant_id: (l$variant_id as int),
      cart_quantity: (l$cart_quantity as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String image;

  final double? mrp;

  final double price;

  final int product_id;

  final String product_title;

  final String? uom_name;

  final String? uom_value;

  final String user_id;

  final int variant_id;

  final int cart_quantity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$mrp = mrp;
    _resultData['mrp'] = l$mrp;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$product_id = product_id;
    _resultData['product_id'] = l$product_id;
    final l$product_title = product_title;
    _resultData['product_title'] = l$product_title;
    final l$uom_name = uom_name;
    _resultData['uom_name'] = l$uom_name;
    final l$uom_value = uom_value;
    _resultData['uom_value'] = l$uom_value;
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$variant_id = variant_id;
    _resultData['variant_id'] = l$variant_id;
    final l$cart_quantity = cart_quantity;
    _resultData['cart_quantity'] = l$cart_quantity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$image = image;
    final l$mrp = mrp;
    final l$price = price;
    final l$product_id = product_id;
    final l$product_title = product_title;
    final l$uom_name = uom_name;
    final l$uom_value = uom_value;
    final l$user_id = user_id;
    final l$variant_id = variant_id;
    final l$cart_quantity = cart_quantity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$image,
      l$mrp,
      l$price,
      l$product_id,
      l$product_title,
      l$uom_name,
      l$uom_value,
      l$user_id,
      l$variant_id,
      l$cart_quantity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getCartSubscription$cart_items) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    final l$product_title = product_title;
    final lOther$product_title = other.product_title;
    if (l$product_title != lOther$product_title) {
      return false;
    }
    final l$uom_name = uom_name;
    final lOther$uom_name = other.uom_name;
    if (l$uom_name != lOther$uom_name) {
      return false;
    }
    final l$uom_value = uom_value;
    final lOther$uom_value = other.uom_value;
    if (l$uom_value != lOther$uom_value) {
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
    final l$cart_quantity = cart_quantity;
    final lOther$cart_quantity = other.cart_quantity;
    if (l$cart_quantity != lOther$cart_quantity) {
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

extension UtilityExtension$Subscription$getCartSubscription$cart_items
    on Subscription$getCartSubscription$cart_items {
  CopyWith$Subscription$getCartSubscription$cart_items<
          Subscription$getCartSubscription$cart_items>
      get copyWith => CopyWith$Subscription$getCartSubscription$cart_items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getCartSubscription$cart_items<TRes> {
  factory CopyWith$Subscription$getCartSubscription$cart_items(
    Subscription$getCartSubscription$cart_items instance,
    TRes Function(Subscription$getCartSubscription$cart_items) then,
  ) = _CopyWithImpl$Subscription$getCartSubscription$cart_items;

  factory CopyWith$Subscription$getCartSubscription$cart_items.stub(TRes res) =
      _CopyWithStubImpl$Subscription$getCartSubscription$cart_items;

  TRes call({
    int? id,
    String? image,
    double? mrp,
    double? price,
    int? product_id,
    String? product_title,
    String? uom_name,
    String? uom_value,
    String? user_id,
    int? variant_id,
    int? cart_quantity,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getCartSubscription$cart_items<TRes>
    implements CopyWith$Subscription$getCartSubscription$cart_items<TRes> {
  _CopyWithImpl$Subscription$getCartSubscription$cart_items(
    this._instance,
    this._then,
  );

  final Subscription$getCartSubscription$cart_items _instance;

  final TRes Function(Subscription$getCartSubscription$cart_items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? image = _undefined,
    Object? mrp = _undefined,
    Object? price = _undefined,
    Object? product_id = _undefined,
    Object? product_title = _undefined,
    Object? uom_name = _undefined,
    Object? uom_value = _undefined,
    Object? user_id = _undefined,
    Object? variant_id = _undefined,
    Object? cart_quantity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getCartSubscription$cart_items(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        mrp: mrp == _undefined ? _instance.mrp : (mrp as double?),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
        product_id: product_id == _undefined || product_id == null
            ? _instance.product_id
            : (product_id as int),
        product_title: product_title == _undefined || product_title == null
            ? _instance.product_title
            : (product_title as String),
        uom_name:
            uom_name == _undefined ? _instance.uom_name : (uom_name as String?),
        uom_value: uom_value == _undefined
            ? _instance.uom_value
            : (uom_value as String?),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        variant_id: variant_id == _undefined || variant_id == null
            ? _instance.variant_id
            : (variant_id as int),
        cart_quantity: cart_quantity == _undefined || cart_quantity == null
            ? _instance.cart_quantity
            : (cart_quantity as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getCartSubscription$cart_items<TRes>
    implements CopyWith$Subscription$getCartSubscription$cart_items<TRes> {
  _CopyWithStubImpl$Subscription$getCartSubscription$cart_items(this._res);

  TRes _res;

  call({
    int? id,
    String? image,
    double? mrp,
    double? price,
    int? product_id,
    String? product_title,
    String? uom_name,
    String? uom_value,
    String? user_id,
    int? variant_id,
    int? cart_quantity,
    String? $__typename,
  }) =>
      _res;
}

class Query$GetCartItems {
  Query$GetCartItems({
    this.cart_items,
    this.$__typename = 'Query',
  });

  factory Query$GetCartItems.fromJson(Map<String, dynamic> json) {
    final l$cart_items = json['cart_items'];
    final l$$__typename = json['__typename'];
    return Query$GetCartItems(
      cart_items: l$cart_items == null
          ? null
          : Query$GetCartItems$cart_items.fromJson(
              (l$cart_items as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCartItems$cart_items? cart_items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cart_items = cart_items;
    _resultData['cart_items'] = l$cart_items?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cart_items = cart_items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cart_items,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCartItems) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$cart_items = cart_items;
    final lOther$cart_items = other.cart_items;
    if (l$cart_items != lOther$cart_items) {
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

extension UtilityExtension$Query$GetCartItems on Query$GetCartItems {
  CopyWith$Query$GetCartItems<Query$GetCartItems> get copyWith =>
      CopyWith$Query$GetCartItems(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCartItems<TRes> {
  factory CopyWith$Query$GetCartItems(
    Query$GetCartItems instance,
    TRes Function(Query$GetCartItems) then,
  ) = _CopyWithImpl$Query$GetCartItems;

  factory CopyWith$Query$GetCartItems.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCartItems;

  TRes call({
    Query$GetCartItems$cart_items? cart_items,
    String? $__typename,
  });
  CopyWith$Query$GetCartItems$cart_items<TRes> get cart_items;
}

class _CopyWithImpl$Query$GetCartItems<TRes>
    implements CopyWith$Query$GetCartItems<TRes> {
  _CopyWithImpl$Query$GetCartItems(
    this._instance,
    this._then,
  );

  final Query$GetCartItems _instance;

  final TRes Function(Query$GetCartItems) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? cart_items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCartItems(
        cart_items: cart_items == _undefined
            ? _instance.cart_items
            : (cart_items as Query$GetCartItems$cart_items?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$GetCartItems$cart_items<TRes> get cart_items {
    final local$cart_items = _instance.cart_items;
    return local$cart_items == null
        ? CopyWith$Query$GetCartItems$cart_items.stub(_then(_instance))
        : CopyWith$Query$GetCartItems$cart_items(
            local$cart_items, (e) => call(cart_items: e));
  }
}

class _CopyWithStubImpl$Query$GetCartItems<TRes>
    implements CopyWith$Query$GetCartItems<TRes> {
  _CopyWithStubImpl$Query$GetCartItems(this._res);

  TRes _res;

  call({
    Query$GetCartItems$cart_items? cart_items,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$GetCartItems$cart_items<TRes> get cart_items =>
      CopyWith$Query$GetCartItems$cart_items.stub(_res);
}

const documentNodeQueryGetCartItems = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCartItems'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'cart_items'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: NameNode(value: 'id'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: NameNode(value: 'image'),
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'mrp'),
            alias: NameNode(value: 'mrp'),
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
            name: NameNode(value: 'product_id'),
            alias: NameNode(value: 'productId'),
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
            name: NameNode(value: 'cart_quantity'),
            alias: NameNode(value: 'cartQuantity'),
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
Query$GetCartItems _parserFn$Query$GetCartItems(Map<String, dynamic> data) =>
    Query$GetCartItems.fromJson(data);
typedef OnQueryComplete$Query$GetCartItems = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCartItems?,
);

class Options$Query$GetCartItems
    extends graphql.QueryOptions<Query$GetCartItems> {
  Options$Query$GetCartItems({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCartItems? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCartItems? onComplete,
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
                    data == null ? null : _parserFn$Query$GetCartItems(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCartItems,
          parserFn: _parserFn$Query$GetCartItems,
        );

  final OnQueryComplete$Query$GetCartItems? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCartItems
    extends graphql.WatchQueryOptions<Query$GetCartItems> {
  WatchOptions$Query$GetCartItems({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCartItems? typedOptimisticResult,
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
          document: documentNodeQueryGetCartItems,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCartItems,
        );
}

class FetchMoreOptions$Query$GetCartItems extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCartItems(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryGetCartItems,
        );
}

extension ClientExtension$Query$GetCartItems on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCartItems>> query$GetCartItems(
          [Options$Query$GetCartItems? options]) async =>
      await this.query(options ?? Options$Query$GetCartItems());
  graphql.ObservableQuery<Query$GetCartItems> watchQuery$GetCartItems(
          [WatchOptions$Query$GetCartItems? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$GetCartItems());
  void writeQuery$GetCartItems({
    required Query$GetCartItems data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryGetCartItems)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCartItems? readQuery$GetCartItems({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCartItems)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCartItems.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$GetCartItems> useQuery$GetCartItems(
        [Options$Query$GetCartItems? options]) =>
    graphql_flutter.useQuery(options ?? Options$Query$GetCartItems());
graphql.ObservableQuery<Query$GetCartItems> useWatchQuery$GetCartItems(
        [WatchOptions$Query$GetCartItems? options]) =>
    graphql_flutter.useWatchQuery(options ?? WatchOptions$Query$GetCartItems());

class Query$GetCartItems$Widget
    extends graphql_flutter.Query<Query$GetCartItems> {
  Query$GetCartItems$Widget({
    widgets.Key? key,
    Options$Query$GetCartItems? options,
    required graphql_flutter.QueryBuilder<Query$GetCartItems> builder,
  }) : super(
          key: key,
          options: options ?? Options$Query$GetCartItems(),
          builder: builder,
        );
}

class Query$GetCartItems$cart_items {
  Query$GetCartItems$cart_items({
    required this.id,
    required this.image,
    this.mrp,
    required this.price,
    required this.productId,
    required this.productTitle,
    this.uomName,
    this.uomValue,
    required this.userId,
    required this.variantId,
    required this.cartQuantity,
    this.$__typename = 'CartItem',
  });

  factory Query$GetCartItems$cart_items.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$image = json['image'];
    final l$mrp = json['mrp'];
    final l$price = json['price'];
    final l$productId = json['productId'];
    final l$productTitle = json['productTitle'];
    final l$uomName = json['uomName'];
    final l$uomValue = json['uomValue'];
    final l$userId = json['userId'];
    final l$variantId = json['variantId'];
    final l$cartQuantity = json['cartQuantity'];
    final l$$__typename = json['__typename'];
    return Query$GetCartItems$cart_items(
      id: (l$id as int),
      image: (l$image as String),
      mrp: (l$mrp as num?)?.toDouble(),
      price: (l$price as num).toDouble(),
      productId: (l$productId as int),
      productTitle: (l$productTitle as String),
      uomName: (l$uomName as String?),
      uomValue: (l$uomValue as String?),
      userId: (l$userId as String),
      variantId: (l$variantId as int),
      cartQuantity: (l$cartQuantity as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String image;

  final double? mrp;

  final double price;

  final int productId;

  final String productTitle;

  final String? uomName;

  final String? uomValue;

  final String userId;

  final int variantId;

  final int cartQuantity;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$mrp = mrp;
    _resultData['mrp'] = l$mrp;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$productId = productId;
    _resultData['productId'] = l$productId;
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
    final l$cartQuantity = cartQuantity;
    _resultData['cartQuantity'] = l$cartQuantity;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$image = image;
    final l$mrp = mrp;
    final l$price = price;
    final l$productId = productId;
    final l$productTitle = productTitle;
    final l$uomName = uomName;
    final l$uomValue = uomValue;
    final l$userId = userId;
    final l$variantId = variantId;
    final l$cartQuantity = cartQuantity;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$image,
      l$mrp,
      l$price,
      l$productId,
      l$productTitle,
      l$uomName,
      l$uomValue,
      l$userId,
      l$variantId,
      l$cartQuantity,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$GetCartItems$cart_items) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
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
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
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
    final l$cartQuantity = cartQuantity;
    final lOther$cartQuantity = other.cartQuantity;
    if (l$cartQuantity != lOther$cartQuantity) {
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

extension UtilityExtension$Query$GetCartItems$cart_items
    on Query$GetCartItems$cart_items {
  CopyWith$Query$GetCartItems$cart_items<Query$GetCartItems$cart_items>
      get copyWith => CopyWith$Query$GetCartItems$cart_items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCartItems$cart_items<TRes> {
  factory CopyWith$Query$GetCartItems$cart_items(
    Query$GetCartItems$cart_items instance,
    TRes Function(Query$GetCartItems$cart_items) then,
  ) = _CopyWithImpl$Query$GetCartItems$cart_items;

  factory CopyWith$Query$GetCartItems$cart_items.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCartItems$cart_items;

  TRes call({
    int? id,
    String? image,
    double? mrp,
    double? price,
    int? productId,
    String? productTitle,
    String? uomName,
    String? uomValue,
    String? userId,
    int? variantId,
    int? cartQuantity,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCartItems$cart_items<TRes>
    implements CopyWith$Query$GetCartItems$cart_items<TRes> {
  _CopyWithImpl$Query$GetCartItems$cart_items(
    this._instance,
    this._then,
  );

  final Query$GetCartItems$cart_items _instance;

  final TRes Function(Query$GetCartItems$cart_items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? image = _undefined,
    Object? mrp = _undefined,
    Object? price = _undefined,
    Object? productId = _undefined,
    Object? productTitle = _undefined,
    Object? uomName = _undefined,
    Object? uomValue = _undefined,
    Object? userId = _undefined,
    Object? variantId = _undefined,
    Object? cartQuantity = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCartItems$cart_items(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as String),
        mrp: mrp == _undefined ? _instance.mrp : (mrp as double?),
        price: price == _undefined || price == null
            ? _instance.price
            : (price as double),
        productId: productId == _undefined || productId == null
            ? _instance.productId
            : (productId as int),
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
        cartQuantity: cartQuantity == _undefined || cartQuantity == null
            ? _instance.cartQuantity
            : (cartQuantity as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCartItems$cart_items<TRes>
    implements CopyWith$Query$GetCartItems$cart_items<TRes> {
  _CopyWithStubImpl$Query$GetCartItems$cart_items(this._res);

  TRes _res;

  call({
    int? id,
    String? image,
    double? mrp,
    double? price,
    int? productId,
    String? productTitle,
    String? uomName,
    String? uomValue,
    String? userId,
    int? variantId,
    int? cartQuantity,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$updateCartItemQuantity {
  factory Variables$Mutation$updateCartItemQuantity({
    required int variant_id,
    required int cart_quantity,
  }) =>
      Variables$Mutation$updateCartItemQuantity._({
        r'variant_id': variant_id,
        r'cart_quantity': cart_quantity,
      });

  Variables$Mutation$updateCartItemQuantity._(this._$data);

  factory Variables$Mutation$updateCartItemQuantity.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$variant_id = data['variant_id'];
    result$data['variant_id'] = (l$variant_id as int);
    final l$cart_quantity = data['cart_quantity'];
    result$data['cart_quantity'] = (l$cart_quantity as int);
    return Variables$Mutation$updateCartItemQuantity._(result$data);
  }

  Map<String, dynamic> _$data;

  int get variant_id => (_$data['variant_id'] as int);
  int get cart_quantity => (_$data['cart_quantity'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$variant_id = variant_id;
    result$data['variant_id'] = l$variant_id;
    final l$cart_quantity = cart_quantity;
    result$data['cart_quantity'] = l$cart_quantity;
    return result$data;
  }

  CopyWith$Variables$Mutation$updateCartItemQuantity<
          Variables$Mutation$updateCartItemQuantity>
      get copyWith => CopyWith$Variables$Mutation$updateCartItemQuantity(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$updateCartItemQuantity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$variant_id = variant_id;
    final lOther$variant_id = other.variant_id;
    if (l$variant_id != lOther$variant_id) {
      return false;
    }
    final l$cart_quantity = cart_quantity;
    final lOther$cart_quantity = other.cart_quantity;
    if (l$cart_quantity != lOther$cart_quantity) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$variant_id = variant_id;
    final l$cart_quantity = cart_quantity;
    return Object.hashAll([
      l$variant_id,
      l$cart_quantity,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$updateCartItemQuantity<TRes> {
  factory CopyWith$Variables$Mutation$updateCartItemQuantity(
    Variables$Mutation$updateCartItemQuantity instance,
    TRes Function(Variables$Mutation$updateCartItemQuantity) then,
  ) = _CopyWithImpl$Variables$Mutation$updateCartItemQuantity;

  factory CopyWith$Variables$Mutation$updateCartItemQuantity.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$updateCartItemQuantity;

  TRes call({
    int? variant_id,
    int? cart_quantity,
  });
}

class _CopyWithImpl$Variables$Mutation$updateCartItemQuantity<TRes>
    implements CopyWith$Variables$Mutation$updateCartItemQuantity<TRes> {
  _CopyWithImpl$Variables$Mutation$updateCartItemQuantity(
    this._instance,
    this._then,
  );

  final Variables$Mutation$updateCartItemQuantity _instance;

  final TRes Function(Variables$Mutation$updateCartItemQuantity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? variant_id = _undefined,
    Object? cart_quantity = _undefined,
  }) =>
      _then(Variables$Mutation$updateCartItemQuantity._({
        ..._instance._$data,
        if (variant_id != _undefined && variant_id != null)
          'variant_id': (variant_id as int),
        if (cart_quantity != _undefined && cart_quantity != null)
          'cart_quantity': (cart_quantity as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateCartItemQuantity<TRes>
    implements CopyWith$Variables$Mutation$updateCartItemQuantity<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateCartItemQuantity(this._res);

  TRes _res;

  call({
    int? variant_id,
    int? cart_quantity,
  }) =>
      _res;
}

class Mutation$updateCartItemQuantity {
  Mutation$updateCartItemQuantity({
    this.update_cart_items,
    this.$__typename = 'Mutation',
  });

  factory Mutation$updateCartItemQuantity.fromJson(Map<String, dynamic> json) {
    final l$update_cart_items = json['update_cart_items'];
    final l$$__typename = json['__typename'];
    return Mutation$updateCartItemQuantity(
      update_cart_items: l$update_cart_items == null
          ? null
          : Mutation$updateCartItemQuantity$update_cart_items.fromJson(
              (l$update_cart_items as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$updateCartItemQuantity$update_cart_items? update_cart_items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$update_cart_items = update_cart_items;
    _resultData['update_cart_items'] = l$update_cart_items?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$update_cart_items = update_cart_items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$update_cart_items,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$updateCartItemQuantity) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$update_cart_items = update_cart_items;
    final lOther$update_cart_items = other.update_cart_items;
    if (l$update_cart_items != lOther$update_cart_items) {
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

extension UtilityExtension$Mutation$updateCartItemQuantity
    on Mutation$updateCartItemQuantity {
  CopyWith$Mutation$updateCartItemQuantity<Mutation$updateCartItemQuantity>
      get copyWith => CopyWith$Mutation$updateCartItemQuantity(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateCartItemQuantity<TRes> {
  factory CopyWith$Mutation$updateCartItemQuantity(
    Mutation$updateCartItemQuantity instance,
    TRes Function(Mutation$updateCartItemQuantity) then,
  ) = _CopyWithImpl$Mutation$updateCartItemQuantity;

  factory CopyWith$Mutation$updateCartItemQuantity.stub(TRes res) =
      _CopyWithStubImpl$Mutation$updateCartItemQuantity;

  TRes call({
    Mutation$updateCartItemQuantity$update_cart_items? update_cart_items,
    String? $__typename,
  });
  CopyWith$Mutation$updateCartItemQuantity$update_cart_items<TRes>
      get update_cart_items;
}

class _CopyWithImpl$Mutation$updateCartItemQuantity<TRes>
    implements CopyWith$Mutation$updateCartItemQuantity<TRes> {
  _CopyWithImpl$Mutation$updateCartItemQuantity(
    this._instance,
    this._then,
  );

  final Mutation$updateCartItemQuantity _instance;

  final TRes Function(Mutation$updateCartItemQuantity) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? update_cart_items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateCartItemQuantity(
        update_cart_items: update_cart_items == _undefined
            ? _instance.update_cart_items
            : (update_cart_items
                as Mutation$updateCartItemQuantity$update_cart_items?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$updateCartItemQuantity$update_cart_items<TRes>
      get update_cart_items {
    final local$update_cart_items = _instance.update_cart_items;
    return local$update_cart_items == null
        ? CopyWith$Mutation$updateCartItemQuantity$update_cart_items.stub(
            _then(_instance))
        : CopyWith$Mutation$updateCartItemQuantity$update_cart_items(
            local$update_cart_items, (e) => call(update_cart_items: e));
  }
}

class _CopyWithStubImpl$Mutation$updateCartItemQuantity<TRes>
    implements CopyWith$Mutation$updateCartItemQuantity<TRes> {
  _CopyWithStubImpl$Mutation$updateCartItemQuantity(this._res);

  TRes _res;

  call({
    Mutation$updateCartItemQuantity$update_cart_items? update_cart_items,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$updateCartItemQuantity$update_cart_items<TRes>
      get update_cart_items =>
          CopyWith$Mutation$updateCartItemQuantity$update_cart_items.stub(_res);
}

const documentNodeMutationupdateCartItemQuantity = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'updateCartItemQuantity'),
    variableDefinitions: [
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
        variable: VariableNode(name: NameNode(value: 'cart_quantity')),
        type: NamedTypeNode(
          name: NameNode(value: 'smallint'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_cart_items'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'variant_id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'variant_id')),
                  )
                ]),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: '_set'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'cart_quantity'),
                value: VariableNode(name: NameNode(value: 'cart_quantity')),
              )
            ]),
          ),
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
Mutation$updateCartItemQuantity _parserFn$Mutation$updateCartItemQuantity(
        Map<String, dynamic> data) =>
    Mutation$updateCartItemQuantity.fromJson(data);
typedef OnMutationCompleted$Mutation$updateCartItemQuantity = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$updateCartItemQuantity?,
);

class Options$Mutation$updateCartItemQuantity
    extends graphql.MutationOptions<Mutation$updateCartItemQuantity> {
  Options$Mutation$updateCartItemQuantity({
    String? operationName,
    required Variables$Mutation$updateCartItemQuantity variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateCartItemQuantity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateCartItemQuantity? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateCartItemQuantity>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$updateCartItemQuantity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateCartItemQuantity,
          parserFn: _parserFn$Mutation$updateCartItemQuantity,
        );

  final OnMutationCompleted$Mutation$updateCartItemQuantity?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$updateCartItemQuantity
    extends graphql.WatchQueryOptions<Mutation$updateCartItemQuantity> {
  WatchOptions$Mutation$updateCartItemQuantity({
    String? operationName,
    required Variables$Mutation$updateCartItemQuantity variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateCartItemQuantity? typedOptimisticResult,
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
          document: documentNodeMutationupdateCartItemQuantity,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$updateCartItemQuantity,
        );
}

extension ClientExtension$Mutation$updateCartItemQuantity
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$updateCartItemQuantity>>
      mutate$updateCartItemQuantity(
              Options$Mutation$updateCartItemQuantity options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$updateCartItemQuantity>
      watchMutation$updateCartItemQuantity(
              WatchOptions$Mutation$updateCartItemQuantity options) =>
          this.watchMutation(options);
}

class Mutation$updateCartItemQuantity$HookResult {
  Mutation$updateCartItemQuantity$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$updateCartItemQuantity runMutation;

  final graphql.QueryResult<Mutation$updateCartItemQuantity> result;
}

Mutation$updateCartItemQuantity$HookResult useMutation$updateCartItemQuantity(
    [WidgetOptions$Mutation$updateCartItemQuantity? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$updateCartItemQuantity());
  return Mutation$updateCartItemQuantity$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$updateCartItemQuantity>
    useWatchMutation$updateCartItemQuantity(
            WatchOptions$Mutation$updateCartItemQuantity options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$updateCartItemQuantity
    extends graphql.MutationOptions<Mutation$updateCartItemQuantity> {
  WidgetOptions$Mutation$updateCartItemQuantity({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$updateCartItemQuantity? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$updateCartItemQuantity? onCompleted,
    graphql.OnMutationUpdate<Mutation$updateCartItemQuantity>? update,
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
                    data == null
                        ? null
                        : _parserFn$Mutation$updateCartItemQuantity(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationupdateCartItemQuantity,
          parserFn: _parserFn$Mutation$updateCartItemQuantity,
        );

  final OnMutationCompleted$Mutation$updateCartItemQuantity?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$updateCartItemQuantity
    = graphql.MultiSourceResult<Mutation$updateCartItemQuantity> Function(
  Variables$Mutation$updateCartItemQuantity, {
  Object? optimisticResult,
  Mutation$updateCartItemQuantity? typedOptimisticResult,
});
typedef Builder$Mutation$updateCartItemQuantity = widgets.Widget Function(
  RunMutation$Mutation$updateCartItemQuantity,
  graphql.QueryResult<Mutation$updateCartItemQuantity>?,
);

class Mutation$updateCartItemQuantity$Widget
    extends graphql_flutter.Mutation<Mutation$updateCartItemQuantity> {
  Mutation$updateCartItemQuantity$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$updateCartItemQuantity? options,
    required Builder$Mutation$updateCartItemQuantity builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$updateCartItemQuantity(),
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

class Mutation$updateCartItemQuantity$update_cart_items {
  Mutation$updateCartItemQuantity$update_cart_items({
    required this.affected_rows,
    this.$__typename = 'UpdateCartQuantityResponse',
  });

  factory Mutation$updateCartItemQuantity$update_cart_items.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$updateCartItemQuantity$update_cart_items(
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
    if (!(other is Mutation$updateCartItemQuantity$update_cart_items) ||
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

extension UtilityExtension$Mutation$updateCartItemQuantity$update_cart_items
    on Mutation$updateCartItemQuantity$update_cart_items {
  CopyWith$Mutation$updateCartItemQuantity$update_cart_items<
          Mutation$updateCartItemQuantity$update_cart_items>
      get copyWith =>
          CopyWith$Mutation$updateCartItemQuantity$update_cart_items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$updateCartItemQuantity$update_cart_items<
    TRes> {
  factory CopyWith$Mutation$updateCartItemQuantity$update_cart_items(
    Mutation$updateCartItemQuantity$update_cart_items instance,
    TRes Function(Mutation$updateCartItemQuantity$update_cart_items) then,
  ) = _CopyWithImpl$Mutation$updateCartItemQuantity$update_cart_items;

  factory CopyWith$Mutation$updateCartItemQuantity$update_cart_items.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$updateCartItemQuantity$update_cart_items;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$updateCartItemQuantity$update_cart_items<TRes>
    implements
        CopyWith$Mutation$updateCartItemQuantity$update_cart_items<TRes> {
  _CopyWithImpl$Mutation$updateCartItemQuantity$update_cart_items(
    this._instance,
    this._then,
  );

  final Mutation$updateCartItemQuantity$update_cart_items _instance;

  final TRes Function(Mutation$updateCartItemQuantity$update_cart_items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$updateCartItemQuantity$update_cart_items(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$updateCartItemQuantity$update_cart_items<TRes>
    implements
        CopyWith$Mutation$updateCartItemQuantity$update_cart_items<TRes> {
  _CopyWithStubImpl$Mutation$updateCartItemQuantity$update_cart_items(
      this._res);

  TRes _res;

  call({
    int? affected_rows,
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
    required this.insert_cart_items,
    this.$__typename = 'Mutation',
  });

  factory Mutation$AddToCart.fromJson(Map<String, dynamic> json) {
    final l$insert_cart_items = json['insert_cart_items'];
    final l$$__typename = json['__typename'];
    return Mutation$AddToCart(
      insert_cart_items: Mutation$AddToCart$insert_cart_items.fromJson(
          (l$insert_cart_items as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$AddToCart$insert_cart_items insert_cart_items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$insert_cart_items = insert_cart_items;
    _resultData['insert_cart_items'] = l$insert_cart_items.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$insert_cart_items = insert_cart_items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$insert_cart_items,
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
    final l$insert_cart_items = insert_cart_items;
    final lOther$insert_cart_items = other.insert_cart_items;
    if (l$insert_cart_items != lOther$insert_cart_items) {
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
    Mutation$AddToCart$insert_cart_items? insert_cart_items,
    String? $__typename,
  });
  CopyWith$Mutation$AddToCart$insert_cart_items<TRes> get insert_cart_items;
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
    Object? insert_cart_items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddToCart(
        insert_cart_items:
            insert_cart_items == _undefined || insert_cart_items == null
                ? _instance.insert_cart_items
                : (insert_cart_items as Mutation$AddToCart$insert_cart_items),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$AddToCart$insert_cart_items<TRes> get insert_cart_items {
    final local$insert_cart_items = _instance.insert_cart_items;
    return CopyWith$Mutation$AddToCart$insert_cart_items(
        local$insert_cart_items, (e) => call(insert_cart_items: e));
  }
}

class _CopyWithStubImpl$Mutation$AddToCart<TRes>
    implements CopyWith$Mutation$AddToCart<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart(this._res);

  TRes _res;

  call({
    Mutation$AddToCart$insert_cart_items? insert_cart_items,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$AddToCart$insert_cart_items<TRes> get insert_cart_items =>
      CopyWith$Mutation$AddToCart$insert_cart_items.stub(_res);
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
        name: NameNode(value: 'insert_cart_items'),
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

class Mutation$AddToCart$insert_cart_items {
  Mutation$AddToCart$insert_cart_items({
    required this.affected_rows,
    this.$__typename = 'InsertCartItemResponse',
  });

  factory Mutation$AddToCart$insert_cart_items.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$AddToCart$insert_cart_items(
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
    if (!(other is Mutation$AddToCart$insert_cart_items) ||
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

extension UtilityExtension$Mutation$AddToCart$insert_cart_items
    on Mutation$AddToCart$insert_cart_items {
  CopyWith$Mutation$AddToCart$insert_cart_items<
          Mutation$AddToCart$insert_cart_items>
      get copyWith => CopyWith$Mutation$AddToCart$insert_cart_items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$AddToCart$insert_cart_items<TRes> {
  factory CopyWith$Mutation$AddToCart$insert_cart_items(
    Mutation$AddToCart$insert_cart_items instance,
    TRes Function(Mutation$AddToCart$insert_cart_items) then,
  ) = _CopyWithImpl$Mutation$AddToCart$insert_cart_items;

  factory CopyWith$Mutation$AddToCart$insert_cart_items.stub(TRes res) =
      _CopyWithStubImpl$Mutation$AddToCart$insert_cart_items;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$AddToCart$insert_cart_items<TRes>
    implements CopyWith$Mutation$AddToCart$insert_cart_items<TRes> {
  _CopyWithImpl$Mutation$AddToCart$insert_cart_items(
    this._instance,
    this._then,
  );

  final Mutation$AddToCart$insert_cart_items _instance;

  final TRes Function(Mutation$AddToCart$insert_cart_items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$AddToCart$insert_cart_items(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$AddToCart$insert_cart_items<TRes>
    implements CopyWith$Mutation$AddToCart$insert_cart_items<TRes> {
  _CopyWithStubImpl$Mutation$AddToCart$insert_cart_items(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}
