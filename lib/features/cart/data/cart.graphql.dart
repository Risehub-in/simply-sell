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
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'cart_quantity'),
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
            name: NameNode(value: 'user_id'),
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
                name: NameNode(value: 'id'),
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
                name: NameNode(value: 'uom_value'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'uom'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'uom_name'),
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
                name: NameNode(value: 'product'),
                alias: null,
                arguments: [],
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
                    name: NameNode(value: 'product_title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'featured_image'),
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
    required this.cart_quantity,
    this.id,
    required this.user_id,
    this.variant,
    this.$__typename = 'CartItem',
  });

  factory Subscription$getCartSubscription$cart_items.fromJson(
      Map<String, dynamic> json) {
    final l$cart_quantity = json['cart_quantity'];
    final l$id = json['id'];
    final l$user_id = json['user_id'];
    final l$variant = json['variant'];
    final l$$__typename = json['__typename'];
    return Subscription$getCartSubscription$cart_items(
      cart_quantity: (l$cart_quantity as int),
      id: (l$id as int?),
      user_id: (l$user_id as String),
      variant: l$variant == null
          ? null
          : Subscription$getCartSubscription$cart_items$variant.fromJson(
              (l$variant as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int cart_quantity;

  final int? id;

  final String user_id;

  final Subscription$getCartSubscription$cart_items$variant? variant;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$cart_quantity = cart_quantity;
    _resultData['cart_quantity'] = l$cart_quantity;
    final l$id = id;
    _resultData['id'] = l$id;
    final l$user_id = user_id;
    _resultData['user_id'] = l$user_id;
    final l$variant = variant;
    _resultData['variant'] = l$variant?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$cart_quantity = cart_quantity;
    final l$id = id;
    final l$user_id = user_id;
    final l$variant = variant;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$cart_quantity,
      l$id,
      l$user_id,
      l$variant,
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
    final l$cart_quantity = cart_quantity;
    final lOther$cart_quantity = other.cart_quantity;
    if (l$cart_quantity != lOther$cart_quantity) {
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
    int? cart_quantity,
    int? id,
    String? user_id,
    Subscription$getCartSubscription$cart_items$variant? variant,
    String? $__typename,
  });
  CopyWith$Subscription$getCartSubscription$cart_items$variant<TRes>
      get variant;
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
    Object? cart_quantity = _undefined,
    Object? id = _undefined,
    Object? user_id = _undefined,
    Object? variant = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getCartSubscription$cart_items(
        cart_quantity: cart_quantity == _undefined || cart_quantity == null
            ? _instance.cart_quantity
            : (cart_quantity as int),
        id: id == _undefined ? _instance.id : (id as int?),
        user_id: user_id == _undefined || user_id == null
            ? _instance.user_id
            : (user_id as String),
        variant: variant == _undefined
            ? _instance.variant
            : (variant as Subscription$getCartSubscription$cart_items$variant?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$getCartSubscription$cart_items$variant<TRes>
      get variant {
    final local$variant = _instance.variant;
    return local$variant == null
        ? CopyWith$Subscription$getCartSubscription$cart_items$variant.stub(
            _then(_instance))
        : CopyWith$Subscription$getCartSubscription$cart_items$variant(
            local$variant, (e) => call(variant: e));
  }
}

class _CopyWithStubImpl$Subscription$getCartSubscription$cart_items<TRes>
    implements CopyWith$Subscription$getCartSubscription$cart_items<TRes> {
  _CopyWithStubImpl$Subscription$getCartSubscription$cart_items(this._res);

  TRes _res;

  call({
    int? cart_quantity,
    int? id,
    String? user_id,
    Subscription$getCartSubscription$cart_items$variant? variant,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$getCartSubscription$cart_items$variant<TRes>
      get variant =>
          CopyWith$Subscription$getCartSubscription$cart_items$variant.stub(
              _res);
}

class Subscription$getCartSubscription$cart_items$variant {
  Subscription$getCartSubscription$cart_items$variant({
    this.id,
    this.mrp,
    this.price,
    this.uom_value,
    this.uom,
    this.product,
    this.$__typename = 'Variant',
  });

  factory Subscription$getCartSubscription$cart_items$variant.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$mrp = json['mrp'];
    final l$price = json['price'];
    final l$uom_value = json['uom_value'];
    final l$uom = json['uom'];
    final l$product = json['product'];
    final l$$__typename = json['__typename'];
    return Subscription$getCartSubscription$cart_items$variant(
      id: (l$id as int?),
      mrp: (l$mrp as num?)?.toDouble(),
      price: (l$price as num?)?.toDouble(),
      uom_value: (l$uom_value as String?),
      uom: l$uom == null
          ? null
          : Subscription$getCartSubscription$cart_items$variant$uom.fromJson(
              (l$uom as Map<String, dynamic>)),
      product: l$product == null
          ? null
          : Subscription$getCartSubscription$cart_items$variant$product
              .fromJson((l$product as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final double? mrp;

  final double? price;

  final String? uom_value;

  final Subscription$getCartSubscription$cart_items$variant$uom? uom;

  final Subscription$getCartSubscription$cart_items$variant$product? product;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$mrp = mrp;
    _resultData['mrp'] = l$mrp;
    final l$price = price;
    _resultData['price'] = l$price;
    final l$uom_value = uom_value;
    _resultData['uom_value'] = l$uom_value;
    final l$uom = uom;
    _resultData['uom'] = l$uom?.toJson();
    final l$product = product;
    _resultData['product'] = l$product?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$mrp = mrp;
    final l$price = price;
    final l$uom_value = uom_value;
    final l$uom = uom;
    final l$product = product;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$mrp,
      l$price,
      l$uom_value,
      l$uom,
      l$product,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getCartSubscription$cart_items$variant) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$uom_value = uom_value;
    final lOther$uom_value = other.uom_value;
    if (l$uom_value != lOther$uom_value) {
      return false;
    }
    final l$uom = uom;
    final lOther$uom = other.uom;
    if (l$uom != lOther$uom) {
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

extension UtilityExtension$Subscription$getCartSubscription$cart_items$variant
    on Subscription$getCartSubscription$cart_items$variant {
  CopyWith$Subscription$getCartSubscription$cart_items$variant<
          Subscription$getCartSubscription$cart_items$variant>
      get copyWith =>
          CopyWith$Subscription$getCartSubscription$cart_items$variant(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getCartSubscription$cart_items$variant<
    TRes> {
  factory CopyWith$Subscription$getCartSubscription$cart_items$variant(
    Subscription$getCartSubscription$cart_items$variant instance,
    TRes Function(Subscription$getCartSubscription$cart_items$variant) then,
  ) = _CopyWithImpl$Subscription$getCartSubscription$cart_items$variant;

  factory CopyWith$Subscription$getCartSubscription$cart_items$variant.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getCartSubscription$cart_items$variant;

  TRes call({
    int? id,
    double? mrp,
    double? price,
    String? uom_value,
    Subscription$getCartSubscription$cart_items$variant$uom? uom,
    Subscription$getCartSubscription$cart_items$variant$product? product,
    String? $__typename,
  });
  CopyWith$Subscription$getCartSubscription$cart_items$variant$uom<TRes>
      get uom;
  CopyWith$Subscription$getCartSubscription$cart_items$variant$product<TRes>
      get product;
}

class _CopyWithImpl$Subscription$getCartSubscription$cart_items$variant<TRes>
    implements
        CopyWith$Subscription$getCartSubscription$cart_items$variant<TRes> {
  _CopyWithImpl$Subscription$getCartSubscription$cart_items$variant(
    this._instance,
    this._then,
  );

  final Subscription$getCartSubscription$cart_items$variant _instance;

  final TRes Function(Subscription$getCartSubscription$cart_items$variant)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? mrp = _undefined,
    Object? price = _undefined,
    Object? uom_value = _undefined,
    Object? uom = _undefined,
    Object? product = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getCartSubscription$cart_items$variant(
        id: id == _undefined ? _instance.id : (id as int?),
        mrp: mrp == _undefined ? _instance.mrp : (mrp as double?),
        price: price == _undefined ? _instance.price : (price as double?),
        uom_value: uom_value == _undefined
            ? _instance.uom_value
            : (uom_value as String?),
        uom: uom == _undefined
            ? _instance.uom
            : (uom as Subscription$getCartSubscription$cart_items$variant$uom?),
        product: product == _undefined
            ? _instance.product
            : (product
                as Subscription$getCartSubscription$cart_items$variant$product?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Subscription$getCartSubscription$cart_items$variant$uom<TRes>
      get uom {
    final local$uom = _instance.uom;
    return local$uom == null
        ? CopyWith$Subscription$getCartSubscription$cart_items$variant$uom.stub(
            _then(_instance))
        : CopyWith$Subscription$getCartSubscription$cart_items$variant$uom(
            local$uom, (e) => call(uom: e));
  }

  CopyWith$Subscription$getCartSubscription$cart_items$variant$product<TRes>
      get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Subscription$getCartSubscription$cart_items$variant$product
            .stub(_then(_instance))
        : CopyWith$Subscription$getCartSubscription$cart_items$variant$product(
            local$product, (e) => call(product: e));
  }
}

class _CopyWithStubImpl$Subscription$getCartSubscription$cart_items$variant<
        TRes>
    implements
        CopyWith$Subscription$getCartSubscription$cart_items$variant<TRes> {
  _CopyWithStubImpl$Subscription$getCartSubscription$cart_items$variant(
      this._res);

  TRes _res;

  call({
    int? id,
    double? mrp,
    double? price,
    String? uom_value,
    Subscription$getCartSubscription$cart_items$variant$uom? uom,
    Subscription$getCartSubscription$cart_items$variant$product? product,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Subscription$getCartSubscription$cart_items$variant$uom<TRes>
      get uom =>
          CopyWith$Subscription$getCartSubscription$cart_items$variant$uom.stub(
              _res);
  CopyWith$Subscription$getCartSubscription$cart_items$variant$product<TRes>
      get product =>
          CopyWith$Subscription$getCartSubscription$cart_items$variant$product
              .stub(_res);
}

class Subscription$getCartSubscription$cart_items$variant$uom {
  Subscription$getCartSubscription$cart_items$variant$uom({
    this.uom_name,
    this.$__typename = 'UOM',
  });

  factory Subscription$getCartSubscription$cart_items$variant$uom.fromJson(
      Map<String, dynamic> json) {
    final l$uom_name = json['uom_name'];
    final l$$__typename = json['__typename'];
    return Subscription$getCartSubscription$cart_items$variant$uom(
      uom_name: (l$uom_name as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? uom_name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$uom_name = uom_name;
    _resultData['uom_name'] = l$uom_name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$uom_name = uom_name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$uom_name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Subscription$getCartSubscription$cart_items$variant$uom) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$uom_name = uom_name;
    final lOther$uom_name = other.uom_name;
    if (l$uom_name != lOther$uom_name) {
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

extension UtilityExtension$Subscription$getCartSubscription$cart_items$variant$uom
    on Subscription$getCartSubscription$cart_items$variant$uom {
  CopyWith$Subscription$getCartSubscription$cart_items$variant$uom<
          Subscription$getCartSubscription$cart_items$variant$uom>
      get copyWith =>
          CopyWith$Subscription$getCartSubscription$cart_items$variant$uom(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getCartSubscription$cart_items$variant$uom<
    TRes> {
  factory CopyWith$Subscription$getCartSubscription$cart_items$variant$uom(
    Subscription$getCartSubscription$cart_items$variant$uom instance,
    TRes Function(Subscription$getCartSubscription$cart_items$variant$uom) then,
  ) = _CopyWithImpl$Subscription$getCartSubscription$cart_items$variant$uom;

  factory CopyWith$Subscription$getCartSubscription$cart_items$variant$uom.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getCartSubscription$cart_items$variant$uom;

  TRes call({
    String? uom_name,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getCartSubscription$cart_items$variant$uom<
        TRes>
    implements
        CopyWith$Subscription$getCartSubscription$cart_items$variant$uom<TRes> {
  _CopyWithImpl$Subscription$getCartSubscription$cart_items$variant$uom(
    this._instance,
    this._then,
  );

  final Subscription$getCartSubscription$cart_items$variant$uom _instance;

  final TRes Function(Subscription$getCartSubscription$cart_items$variant$uom)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? uom_name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getCartSubscription$cart_items$variant$uom(
        uom_name:
            uom_name == _undefined ? _instance.uom_name : (uom_name as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getCartSubscription$cart_items$variant$uom<
        TRes>
    implements
        CopyWith$Subscription$getCartSubscription$cart_items$variant$uom<TRes> {
  _CopyWithStubImpl$Subscription$getCartSubscription$cart_items$variant$uom(
      this._res);

  TRes _res;

  call({
    String? uom_name,
    String? $__typename,
  }) =>
      _res;
}

class Subscription$getCartSubscription$cart_items$variant$product {
  Subscription$getCartSubscription$cart_items$variant$product({
    this.id,
    this.product_title,
    this.featured_image,
    this.$__typename = 'Product',
  });

  factory Subscription$getCartSubscription$cart_items$variant$product.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$product_title = json['product_title'];
    final l$featured_image = json['featured_image'];
    final l$$__typename = json['__typename'];
    return Subscription$getCartSubscription$cart_items$variant$product(
      id: (l$id as int?),
      product_title: (l$product_title as String?),
      featured_image: (l$featured_image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

  final String? product_title;

  final String? featured_image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$product_title = product_title;
    _resultData['product_title'] = l$product_title;
    final l$featured_image = featured_image;
    _resultData['featured_image'] = l$featured_image;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$product_title = product_title;
    final l$featured_image = featured_image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$product_title,
      l$featured_image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other
            is Subscription$getCartSubscription$cart_items$variant$product) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$product_title = product_title;
    final lOther$product_title = other.product_title;
    if (l$product_title != lOther$product_title) {
      return false;
    }
    final l$featured_image = featured_image;
    final lOther$featured_image = other.featured_image;
    if (l$featured_image != lOther$featured_image) {
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

extension UtilityExtension$Subscription$getCartSubscription$cart_items$variant$product
    on Subscription$getCartSubscription$cart_items$variant$product {
  CopyWith$Subscription$getCartSubscription$cart_items$variant$product<
          Subscription$getCartSubscription$cart_items$variant$product>
      get copyWith =>
          CopyWith$Subscription$getCartSubscription$cart_items$variant$product(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$getCartSubscription$cart_items$variant$product<
    TRes> {
  factory CopyWith$Subscription$getCartSubscription$cart_items$variant$product(
    Subscription$getCartSubscription$cart_items$variant$product instance,
    TRes Function(Subscription$getCartSubscription$cart_items$variant$product)
        then,
  ) = _CopyWithImpl$Subscription$getCartSubscription$cart_items$variant$product;

  factory CopyWith$Subscription$getCartSubscription$cart_items$variant$product.stub(
          TRes res) =
      _CopyWithStubImpl$Subscription$getCartSubscription$cart_items$variant$product;

  TRes call({
    int? id,
    String? product_title,
    String? featured_image,
    String? $__typename,
  });
}

class _CopyWithImpl$Subscription$getCartSubscription$cart_items$variant$product<
        TRes>
    implements
        CopyWith$Subscription$getCartSubscription$cart_items$variant$product<
            TRes> {
  _CopyWithImpl$Subscription$getCartSubscription$cart_items$variant$product(
    this._instance,
    this._then,
  );

  final Subscription$getCartSubscription$cart_items$variant$product _instance;

  final TRes Function(
      Subscription$getCartSubscription$cart_items$variant$product) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? product_title = _undefined,
    Object? featured_image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$getCartSubscription$cart_items$variant$product(
        id: id == _undefined ? _instance.id : (id as int?),
        product_title: product_title == _undefined
            ? _instance.product_title
            : (product_title as String?),
        featured_image: featured_image == _undefined
            ? _instance.featured_image
            : (featured_image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Subscription$getCartSubscription$cart_items$variant$product<
        TRes>
    implements
        CopyWith$Subscription$getCartSubscription$cart_items$variant$product<
            TRes> {
  _CopyWithStubImpl$Subscription$getCartSubscription$cart_items$variant$product(
      this._res);

  TRes _res;

  call({
    int? id,
    String? product_title,
    String? featured_image,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$updateCartItemQuantity {
  factory Variables$Mutation$updateCartItemQuantity({
    required int id,
    required int cart_quantity,
  }) =>
      Variables$Mutation$updateCartItemQuantity._({
        r'id': id,
        r'cart_quantity': cart_quantity,
      });

  Variables$Mutation$updateCartItemQuantity._(this._$data);

  factory Variables$Mutation$updateCartItemQuantity.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$cart_quantity = data['cart_quantity'];
    result$data['cart_quantity'] = (l$cart_quantity as int);
    return Variables$Mutation$updateCartItemQuantity._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  int get cart_quantity => (_$data['cart_quantity'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
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
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$id = id;
    final l$cart_quantity = cart_quantity;
    return Object.hashAll([
      l$id,
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
    int? id,
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
    Object? id = _undefined,
    Object? cart_quantity = _undefined,
  }) =>
      _then(Variables$Mutation$updateCartItemQuantity._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (cart_quantity != _undefined && cart_quantity != null)
          'cart_quantity': (cart_quantity as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$updateCartItemQuantity<TRes>
    implements CopyWith$Variables$Mutation$updateCartItemQuantity<TRes> {
  _CopyWithStubImpl$Variables$Mutation$updateCartItemQuantity(this._res);

  TRes _res;

  call({
    int? id,
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
        variable: VariableNode(name: NameNode(value: 'id')),
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
                name: NameNode(value: 'id'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_eq'),
                    value: VariableNode(name: NameNode(value: 'id')),
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

class Variables$Mutation$ClearCart {
  factory Variables$Mutation$ClearCart({required String user_id}) =>
      Variables$Mutation$ClearCart._({
        r'user_id': user_id,
      });

  Variables$Mutation$ClearCart._(this._$data);

  factory Variables$Mutation$ClearCart.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$user_id = data['user_id'];
    result$data['user_id'] = (l$user_id as String);
    return Variables$Mutation$ClearCart._(result$data);
  }

  Map<String, dynamic> _$data;

  String get user_id => (_$data['user_id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$user_id = user_id;
    result$data['user_id'] = l$user_id;
    return result$data;
  }

  CopyWith$Variables$Mutation$ClearCart<Variables$Mutation$ClearCart>
      get copyWith => CopyWith$Variables$Mutation$ClearCart(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$ClearCart) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$user_id = user_id;
    final lOther$user_id = other.user_id;
    if (l$user_id != lOther$user_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$user_id = user_id;
    return Object.hashAll([l$user_id]);
  }
}

abstract class CopyWith$Variables$Mutation$ClearCart<TRes> {
  factory CopyWith$Variables$Mutation$ClearCart(
    Variables$Mutation$ClearCart instance,
    TRes Function(Variables$Mutation$ClearCart) then,
  ) = _CopyWithImpl$Variables$Mutation$ClearCart;

  factory CopyWith$Variables$Mutation$ClearCart.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$ClearCart;

  TRes call({String? user_id});
}

class _CopyWithImpl$Variables$Mutation$ClearCart<TRes>
    implements CopyWith$Variables$Mutation$ClearCart<TRes> {
  _CopyWithImpl$Variables$Mutation$ClearCart(
    this._instance,
    this._then,
  );

  final Variables$Mutation$ClearCart _instance;

  final TRes Function(Variables$Mutation$ClearCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? user_id = _undefined}) =>
      _then(Variables$Mutation$ClearCart._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$ClearCart<TRes>
    implements CopyWith$Variables$Mutation$ClearCart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$ClearCart(this._res);

  TRes _res;

  call({String? user_id}) => _res;
}

class Mutation$ClearCart {
  Mutation$ClearCart({
    required this.delete_cart_items,
    this.$__typename = 'Mutation',
  });

  factory Mutation$ClearCart.fromJson(Map<String, dynamic> json) {
    final l$delete_cart_items = json['delete_cart_items'];
    final l$$__typename = json['__typename'];
    return Mutation$ClearCart(
      delete_cart_items: Mutation$ClearCart$delete_cart_items.fromJson(
          (l$delete_cart_items as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$ClearCart$delete_cart_items delete_cart_items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$delete_cart_items = delete_cart_items;
    _resultData['delete_cart_items'] = l$delete_cart_items.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$delete_cart_items = delete_cart_items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$delete_cart_items,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$ClearCart) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$ClearCart on Mutation$ClearCart {
  CopyWith$Mutation$ClearCart<Mutation$ClearCart> get copyWith =>
      CopyWith$Mutation$ClearCart(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$ClearCart<TRes> {
  factory CopyWith$Mutation$ClearCart(
    Mutation$ClearCart instance,
    TRes Function(Mutation$ClearCart) then,
  ) = _CopyWithImpl$Mutation$ClearCart;

  factory CopyWith$Mutation$ClearCart.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ClearCart;

  TRes call({
    Mutation$ClearCart$delete_cart_items? delete_cart_items,
    String? $__typename,
  });
  CopyWith$Mutation$ClearCart$delete_cart_items<TRes> get delete_cart_items;
}

class _CopyWithImpl$Mutation$ClearCart<TRes>
    implements CopyWith$Mutation$ClearCart<TRes> {
  _CopyWithImpl$Mutation$ClearCart(
    this._instance,
    this._then,
  );

  final Mutation$ClearCart _instance;

  final TRes Function(Mutation$ClearCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? delete_cart_items = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ClearCart(
        delete_cart_items:
            delete_cart_items == _undefined || delete_cart_items == null
                ? _instance.delete_cart_items
                : (delete_cart_items as Mutation$ClearCart$delete_cart_items),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$ClearCart$delete_cart_items<TRes> get delete_cart_items {
    final local$delete_cart_items = _instance.delete_cart_items;
    return CopyWith$Mutation$ClearCart$delete_cart_items(
        local$delete_cart_items, (e) => call(delete_cart_items: e));
  }
}

class _CopyWithStubImpl$Mutation$ClearCart<TRes>
    implements CopyWith$Mutation$ClearCart<TRes> {
  _CopyWithStubImpl$Mutation$ClearCart(this._res);

  TRes _res;

  call({
    Mutation$ClearCart$delete_cart_items? delete_cart_items,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$ClearCart$delete_cart_items<TRes> get delete_cart_items =>
      CopyWith$Mutation$ClearCart$delete_cart_items.stub(_res);
}

const documentNodeMutationClearCart = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'ClearCart'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'user_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'uuid'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
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
Mutation$ClearCart _parserFn$Mutation$ClearCart(Map<String, dynamic> data) =>
    Mutation$ClearCart.fromJson(data);
typedef OnMutationCompleted$Mutation$ClearCart = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$ClearCart?,
);

class Options$Mutation$ClearCart
    extends graphql.MutationOptions<Mutation$ClearCart> {
  Options$Mutation$ClearCart({
    String? operationName,
    required Variables$Mutation$ClearCart variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ClearCart? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ClearCart? onCompleted,
    graphql.OnMutationUpdate<Mutation$ClearCart>? update,
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
                    data == null ? null : _parserFn$Mutation$ClearCart(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationClearCart,
          parserFn: _parserFn$Mutation$ClearCart,
        );

  final OnMutationCompleted$Mutation$ClearCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$ClearCart
    extends graphql.WatchQueryOptions<Mutation$ClearCart> {
  WatchOptions$Mutation$ClearCart({
    String? operationName,
    required Variables$Mutation$ClearCart variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ClearCart? typedOptimisticResult,
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
          document: documentNodeMutationClearCart,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$ClearCart,
        );
}

extension ClientExtension$Mutation$ClearCart on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$ClearCart>> mutate$ClearCart(
          Options$Mutation$ClearCart options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$ClearCart> watchMutation$ClearCart(
          WatchOptions$Mutation$ClearCart options) =>
      this.watchMutation(options);
}

class Mutation$ClearCart$HookResult {
  Mutation$ClearCart$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$ClearCart runMutation;

  final graphql.QueryResult<Mutation$ClearCart> result;
}

Mutation$ClearCart$HookResult useMutation$ClearCart(
    [WidgetOptions$Mutation$ClearCart? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$ClearCart());
  return Mutation$ClearCart$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$ClearCart> useWatchMutation$ClearCart(
        WatchOptions$Mutation$ClearCart options) =>
    graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$ClearCart
    extends graphql.MutationOptions<Mutation$ClearCart> {
  WidgetOptions$Mutation$ClearCart({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$ClearCart? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$ClearCart? onCompleted,
    graphql.OnMutationUpdate<Mutation$ClearCart>? update,
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
                    data == null ? null : _parserFn$Mutation$ClearCart(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationClearCart,
          parserFn: _parserFn$Mutation$ClearCart,
        );

  final OnMutationCompleted$Mutation$ClearCart? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$ClearCart
    = graphql.MultiSourceResult<Mutation$ClearCart> Function(
  Variables$Mutation$ClearCart, {
  Object? optimisticResult,
  Mutation$ClearCart? typedOptimisticResult,
});
typedef Builder$Mutation$ClearCart = widgets.Widget Function(
  RunMutation$Mutation$ClearCart,
  graphql.QueryResult<Mutation$ClearCart>?,
);

class Mutation$ClearCart$Widget
    extends graphql_flutter.Mutation<Mutation$ClearCart> {
  Mutation$ClearCart$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$ClearCart? options,
    required Builder$Mutation$ClearCart builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$ClearCart(),
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

class Mutation$ClearCart$delete_cart_items {
  Mutation$ClearCart$delete_cart_items({
    required this.affected_rows,
    this.$__typename = 'CartItemResponse',
  });

  factory Mutation$ClearCart$delete_cart_items.fromJson(
      Map<String, dynamic> json) {
    final l$affected_rows = json['affected_rows'];
    final l$$__typename = json['__typename'];
    return Mutation$ClearCart$delete_cart_items(
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
    if (!(other is Mutation$ClearCart$delete_cart_items) ||
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

extension UtilityExtension$Mutation$ClearCart$delete_cart_items
    on Mutation$ClearCart$delete_cart_items {
  CopyWith$Mutation$ClearCart$delete_cart_items<
          Mutation$ClearCart$delete_cart_items>
      get copyWith => CopyWith$Mutation$ClearCart$delete_cart_items(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$ClearCart$delete_cart_items<TRes> {
  factory CopyWith$Mutation$ClearCart$delete_cart_items(
    Mutation$ClearCart$delete_cart_items instance,
    TRes Function(Mutation$ClearCart$delete_cart_items) then,
  ) = _CopyWithImpl$Mutation$ClearCart$delete_cart_items;

  factory CopyWith$Mutation$ClearCart$delete_cart_items.stub(TRes res) =
      _CopyWithStubImpl$Mutation$ClearCart$delete_cart_items;

  TRes call({
    int? affected_rows,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$ClearCart$delete_cart_items<TRes>
    implements CopyWith$Mutation$ClearCart$delete_cart_items<TRes> {
  _CopyWithImpl$Mutation$ClearCart$delete_cart_items(
    this._instance,
    this._then,
  );

  final Mutation$ClearCart$delete_cart_items _instance;

  final TRes Function(Mutation$ClearCart$delete_cart_items) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? affected_rows = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$ClearCart$delete_cart_items(
        affected_rows: affected_rows == _undefined || affected_rows == null
            ? _instance.affected_rows
            : (affected_rows as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$ClearCart$delete_cart_items<TRes>
    implements CopyWith$Mutation$ClearCart$delete_cart_items<TRes> {
  _CopyWithStubImpl$Mutation$ClearCart$delete_cart_items(this._res);

  TRes _res;

  call({
    int? affected_rows,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$DeleteSingleCartItem {
  factory Variables$Mutation$DeleteSingleCartItem({required int id}) =>
      Variables$Mutation$DeleteSingleCartItem._({
        r'id': id,
      });

  Variables$Mutation$DeleteSingleCartItem._(this._$data);

  factory Variables$Mutation$DeleteSingleCartItem.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Mutation$DeleteSingleCartItem._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteSingleCartItem<
          Variables$Mutation$DeleteSingleCartItem>
      get copyWith => CopyWith$Variables$Mutation$DeleteSingleCartItem(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Mutation$DeleteSingleCartItem) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$DeleteSingleCartItem<TRes> {
  factory CopyWith$Variables$Mutation$DeleteSingleCartItem(
    Variables$Mutation$DeleteSingleCartItem instance,
    TRes Function(Variables$Mutation$DeleteSingleCartItem) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteSingleCartItem;

  factory CopyWith$Variables$Mutation$DeleteSingleCartItem.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteSingleCartItem;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteSingleCartItem<TRes>
    implements CopyWith$Variables$Mutation$DeleteSingleCartItem<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteSingleCartItem(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteSingleCartItem _instance;

  final TRes Function(Variables$Mutation$DeleteSingleCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteSingleCartItem._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteSingleCartItem<TRes>
    implements CopyWith$Variables$Mutation$DeleteSingleCartItem<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteSingleCartItem(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Mutation$DeleteSingleCartItem {
  Mutation$DeleteSingleCartItem({
    this.delete_cart_items_by_pk,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteSingleCartItem.fromJson(Map<String, dynamic> json) {
    final l$delete_cart_items_by_pk = json['delete_cart_items_by_pk'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteSingleCartItem(
      delete_cart_items_by_pk: l$delete_cart_items_by_pk == null
          ? null
          : Mutation$DeleteSingleCartItem$delete_cart_items_by_pk.fromJson(
              (l$delete_cart_items_by_pk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteSingleCartItem$delete_cart_items_by_pk?
      delete_cart_items_by_pk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$delete_cart_items_by_pk = delete_cart_items_by_pk;
    _resultData['delete_cart_items_by_pk'] =
        l$delete_cart_items_by_pk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$delete_cart_items_by_pk = delete_cart_items_by_pk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$delete_cart_items_by_pk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteSingleCartItem) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$delete_cart_items_by_pk = delete_cart_items_by_pk;
    final lOther$delete_cart_items_by_pk = other.delete_cart_items_by_pk;
    if (l$delete_cart_items_by_pk != lOther$delete_cart_items_by_pk) {
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

extension UtilityExtension$Mutation$DeleteSingleCartItem
    on Mutation$DeleteSingleCartItem {
  CopyWith$Mutation$DeleteSingleCartItem<Mutation$DeleteSingleCartItem>
      get copyWith => CopyWith$Mutation$DeleteSingleCartItem(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteSingleCartItem<TRes> {
  factory CopyWith$Mutation$DeleteSingleCartItem(
    Mutation$DeleteSingleCartItem instance,
    TRes Function(Mutation$DeleteSingleCartItem) then,
  ) = _CopyWithImpl$Mutation$DeleteSingleCartItem;

  factory CopyWith$Mutation$DeleteSingleCartItem.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteSingleCartItem;

  TRes call({
    Mutation$DeleteSingleCartItem$delete_cart_items_by_pk?
        delete_cart_items_by_pk,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk<TRes>
      get delete_cart_items_by_pk;
}

class _CopyWithImpl$Mutation$DeleteSingleCartItem<TRes>
    implements CopyWith$Mutation$DeleteSingleCartItem<TRes> {
  _CopyWithImpl$Mutation$DeleteSingleCartItem(
    this._instance,
    this._then,
  );

  final Mutation$DeleteSingleCartItem _instance;

  final TRes Function(Mutation$DeleteSingleCartItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? delete_cart_items_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteSingleCartItem(
        delete_cart_items_by_pk: delete_cart_items_by_pk == _undefined
            ? _instance.delete_cart_items_by_pk
            : (delete_cart_items_by_pk
                as Mutation$DeleteSingleCartItem$delete_cart_items_by_pk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk<TRes>
      get delete_cart_items_by_pk {
    final local$delete_cart_items_by_pk = _instance.delete_cart_items_by_pk;
    return local$delete_cart_items_by_pk == null
        ? CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk.stub(
            _then(_instance))
        : CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk(
            local$delete_cart_items_by_pk,
            (e) => call(delete_cart_items_by_pk: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteSingleCartItem<TRes>
    implements CopyWith$Mutation$DeleteSingleCartItem<TRes> {
  _CopyWithStubImpl$Mutation$DeleteSingleCartItem(this._res);

  TRes _res;

  call({
    Mutation$DeleteSingleCartItem$delete_cart_items_by_pk?
        delete_cart_items_by_pk,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk<TRes>
      get delete_cart_items_by_pk =>
          CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk.stub(
              _res);
}

const documentNodeMutationDeleteSingleCartItem = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteSingleCartItem'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'bigint'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'delete_cart_items_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
Mutation$DeleteSingleCartItem _parserFn$Mutation$DeleteSingleCartItem(
        Map<String, dynamic> data) =>
    Mutation$DeleteSingleCartItem.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteSingleCartItem = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteSingleCartItem?,
);

class Options$Mutation$DeleteSingleCartItem
    extends graphql.MutationOptions<Mutation$DeleteSingleCartItem> {
  Options$Mutation$DeleteSingleCartItem({
    String? operationName,
    required Variables$Mutation$DeleteSingleCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteSingleCartItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteSingleCartItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteSingleCartItem>? update,
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
                        : _parserFn$Mutation$DeleteSingleCartItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteSingleCartItem,
          parserFn: _parserFn$Mutation$DeleteSingleCartItem,
        );

  final OnMutationCompleted$Mutation$DeleteSingleCartItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteSingleCartItem
    extends graphql.WatchQueryOptions<Mutation$DeleteSingleCartItem> {
  WatchOptions$Mutation$DeleteSingleCartItem({
    String? operationName,
    required Variables$Mutation$DeleteSingleCartItem variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteSingleCartItem? typedOptimisticResult,
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
          document: documentNodeMutationDeleteSingleCartItem,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteSingleCartItem,
        );
}

extension ClientExtension$Mutation$DeleteSingleCartItem
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteSingleCartItem>>
      mutate$DeleteSingleCartItem(
              Options$Mutation$DeleteSingleCartItem options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteSingleCartItem>
      watchMutation$DeleteSingleCartItem(
              WatchOptions$Mutation$DeleteSingleCartItem options) =>
          this.watchMutation(options);
}

class Mutation$DeleteSingleCartItem$HookResult {
  Mutation$DeleteSingleCartItem$HookResult(
    this.runMutation,
    this.result,
  );

  final RunMutation$Mutation$DeleteSingleCartItem runMutation;

  final graphql.QueryResult<Mutation$DeleteSingleCartItem> result;
}

Mutation$DeleteSingleCartItem$HookResult useMutation$DeleteSingleCartItem(
    [WidgetOptions$Mutation$DeleteSingleCartItem? options]) {
  final result = graphql_flutter
      .useMutation(options ?? WidgetOptions$Mutation$DeleteSingleCartItem());
  return Mutation$DeleteSingleCartItem$HookResult(
    (variables, {optimisticResult, typedOptimisticResult}) =>
        result.runMutation(
      variables.toJson(),
      optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
    ),
    result.result,
  );
}

graphql.ObservableQuery<Mutation$DeleteSingleCartItem>
    useWatchMutation$DeleteSingleCartItem(
            WatchOptions$Mutation$DeleteSingleCartItem options) =>
        graphql_flutter.useWatchMutation(options);

class WidgetOptions$Mutation$DeleteSingleCartItem
    extends graphql.MutationOptions<Mutation$DeleteSingleCartItem> {
  WidgetOptions$Mutation$DeleteSingleCartItem({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteSingleCartItem? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteSingleCartItem? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteSingleCartItem>? update,
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
                        : _parserFn$Mutation$DeleteSingleCartItem(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteSingleCartItem,
          parserFn: _parserFn$Mutation$DeleteSingleCartItem,
        );

  final OnMutationCompleted$Mutation$DeleteSingleCartItem?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

typedef RunMutation$Mutation$DeleteSingleCartItem
    = graphql.MultiSourceResult<Mutation$DeleteSingleCartItem> Function(
  Variables$Mutation$DeleteSingleCartItem, {
  Object? optimisticResult,
  Mutation$DeleteSingleCartItem? typedOptimisticResult,
});
typedef Builder$Mutation$DeleteSingleCartItem = widgets.Widget Function(
  RunMutation$Mutation$DeleteSingleCartItem,
  graphql.QueryResult<Mutation$DeleteSingleCartItem>?,
);

class Mutation$DeleteSingleCartItem$Widget
    extends graphql_flutter.Mutation<Mutation$DeleteSingleCartItem> {
  Mutation$DeleteSingleCartItem$Widget({
    widgets.Key? key,
    WidgetOptions$Mutation$DeleteSingleCartItem? options,
    required Builder$Mutation$DeleteSingleCartItem builder,
  }) : super(
          key: key,
          options: options ?? WidgetOptions$Mutation$DeleteSingleCartItem(),
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

class Mutation$DeleteSingleCartItem$delete_cart_items_by_pk {
  Mutation$DeleteSingleCartItem$delete_cart_items_by_pk({
    required this.id,
    this.$__typename = 'CartItemDeletedResponse',
  });

  factory Mutation$DeleteSingleCartItem$delete_cart_items_by_pk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteSingleCartItem$delete_cart_items_by_pk(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Mutation$DeleteSingleCartItem$delete_cart_items_by_pk) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk
    on Mutation$DeleteSingleCartItem$delete_cart_items_by_pk {
  CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk<
          Mutation$DeleteSingleCartItem$delete_cart_items_by_pk>
      get copyWith =>
          CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk<
    TRes> {
  factory CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk(
    Mutation$DeleteSingleCartItem$delete_cart_items_by_pk instance,
    TRes Function(Mutation$DeleteSingleCartItem$delete_cart_items_by_pk) then,
  ) = _CopyWithImpl$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk;

  factory CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk<TRes>
    implements
        CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk<TRes> {
  _CopyWithImpl$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk(
    this._instance,
    this._then,
  );

  final Mutation$DeleteSingleCartItem$delete_cart_items_by_pk _instance;

  final TRes Function(Mutation$DeleteSingleCartItem$delete_cart_items_by_pk)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteSingleCartItem$delete_cart_items_by_pk(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk<
        TRes>
    implements
        CopyWith$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk<TRes> {
  _CopyWithStubImpl$Mutation$DeleteSingleCartItem$delete_cart_items_by_pk(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$AddToCart {
  factory Variables$Mutation$AddToCart({
    required String user_id,
    required int variant_id,
    int? cart_quantity,
  }) =>
      Variables$Mutation$AddToCart._({
        r'user_id': user_id,
        r'variant_id': variant_id,
        if (cart_quantity != null) r'cart_quantity': cart_quantity,
      });

  Variables$Mutation$AddToCart._(this._$data);

  factory Variables$Mutation$AddToCart.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$user_id = data['user_id'];
    result$data['user_id'] = (l$user_id as String);
    final l$variant_id = data['variant_id'];
    result$data['variant_id'] = (l$variant_id as int);
    if (data.containsKey('cart_quantity')) {
      final l$cart_quantity = data['cart_quantity'];
      result$data['cart_quantity'] = (l$cart_quantity as int?);
    }
    return Variables$Mutation$AddToCart._(result$data);
  }

  Map<String, dynamic> _$data;

  String get user_id => (_$data['user_id'] as String);
  int get variant_id => (_$data['variant_id'] as int);
  int? get cart_quantity => (_$data['cart_quantity'] as int?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$user_id = user_id;
    result$data['user_id'] = l$user_id;
    final l$variant_id = variant_id;
    result$data['variant_id'] = l$variant_id;
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
    final l$user_id = user_id;
    final l$variant_id = variant_id;
    final l$cart_quantity = cart_quantity;
    return Object.hashAll([
      l$user_id,
      l$variant_id,
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
    String? user_id,
    int? variant_id,
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
    Object? user_id = _undefined,
    Object? variant_id = _undefined,
    Object? cart_quantity = _undefined,
  }) =>
      _then(Variables$Mutation$AddToCart._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as String),
        if (variant_id != _undefined && variant_id != null)
          'variant_id': (variant_id as int),
        if (cart_quantity != _undefined)
          'cart_quantity': (cart_quantity as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$AddToCart<TRes>
    implements CopyWith$Variables$Mutation$AddToCart<TRes> {
  _CopyWithStubImpl$Variables$Mutation$AddToCart(this._res);

  TRes _res;

  call({
    String? user_id,
    int? variant_id,
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
                name: NameNode(value: 'user_id'),
                value: VariableNode(name: NameNode(value: 'user_id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'variant_id'),
                value: VariableNode(name: NameNode(value: 'variant_id')),
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
    this.$__typename = 'CartItemResponse',
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
