class Input$CartItemOrderByInput {
  factory Input$CartItemOrderByInput({Enum$OrderByDirection? created_at}) =>
      Input$CartItemOrderByInput._({
        if (created_at != null) r'created_at': created_at,
      });

  Input$CartItemOrderByInput._(this._$data);

  factory Input$CartItemOrderByInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('created_at')) {
      final l$created_at = data['created_at'];
      result$data['created_at'] = l$created_at == null
          ? null
          : fromJson$Enum$OrderByDirection((l$created_at as String));
    }
    return Input$CartItemOrderByInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderByDirection? get created_at =>
      (_$data['created_at'] as Enum$OrderByDirection?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('created_at')) {
      final l$created_at = created_at;
      result$data['created_at'] = l$created_at == null
          ? null
          : toJson$Enum$OrderByDirection(l$created_at);
    }
    return result$data;
  }

  CopyWith$Input$CartItemOrderByInput<Input$CartItemOrderByInput>
      get copyWith => CopyWith$Input$CartItemOrderByInput(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CartItemOrderByInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$created_at = created_at;
    final lOther$created_at = other.created_at;
    if (_$data.containsKey('created_at') !=
        other._$data.containsKey('created_at')) {
      return false;
    }
    if (l$created_at != lOther$created_at) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$created_at = created_at;
    return Object.hashAll(
        [_$data.containsKey('created_at') ? l$created_at : const {}]);
  }
}

abstract class CopyWith$Input$CartItemOrderByInput<TRes> {
  factory CopyWith$Input$CartItemOrderByInput(
    Input$CartItemOrderByInput instance,
    TRes Function(Input$CartItemOrderByInput) then,
  ) = _CopyWithImpl$Input$CartItemOrderByInput;

  factory CopyWith$Input$CartItemOrderByInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CartItemOrderByInput;

  TRes call({Enum$OrderByDirection? created_at});
}

class _CopyWithImpl$Input$CartItemOrderByInput<TRes>
    implements CopyWith$Input$CartItemOrderByInput<TRes> {
  _CopyWithImpl$Input$CartItemOrderByInput(
    this._instance,
    this._then,
  );

  final Input$CartItemOrderByInput _instance;

  final TRes Function(Input$CartItemOrderByInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? created_at = _undefined}) =>
      _then(Input$CartItemOrderByInput._({
        ..._instance._$data,
        if (created_at != _undefined)
          'created_at': (created_at as Enum$OrderByDirection?),
      }));
}

class _CopyWithStubImpl$Input$CartItemOrderByInput<TRes>
    implements CopyWith$Input$CartItemOrderByInput<TRes> {
  _CopyWithStubImpl$Input$CartItemOrderByInput(this._res);

  TRes _res;

  call({Enum$OrderByDirection? created_at}) => _res;
}

class Input$order_items_insert_input {
  factory Input$order_items_insert_input({
    required int item_quantity,
    required int order_id,
    required int variant_id,
    required double price,
    required String user_id,
  }) =>
      Input$order_items_insert_input._({
        r'item_quantity': item_quantity,
        r'order_id': order_id,
        r'variant_id': variant_id,
        r'price': price,
        r'user_id': user_id,
      });

  Input$order_items_insert_input._(this._$data);

  factory Input$order_items_insert_input.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$item_quantity = data['item_quantity'];
    result$data['item_quantity'] = (l$item_quantity as int);
    final l$order_id = data['order_id'];
    result$data['order_id'] = (l$order_id as int);
    final l$variant_id = data['variant_id'];
    result$data['variant_id'] = (l$variant_id as int);
    final l$price = data['price'];
    result$data['price'] = (l$price as num).toDouble();
    final l$user_id = data['user_id'];
    result$data['user_id'] = (l$user_id as String);
    return Input$order_items_insert_input._(result$data);
  }

  Map<String, dynamic> _$data;

  int get item_quantity => (_$data['item_quantity'] as int);
  int get order_id => (_$data['order_id'] as int);
  int get variant_id => (_$data['variant_id'] as int);
  double get price => (_$data['price'] as double);
  String get user_id => (_$data['user_id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$item_quantity = item_quantity;
    result$data['item_quantity'] = l$item_quantity;
    final l$order_id = order_id;
    result$data['order_id'] = l$order_id;
    final l$variant_id = variant_id;
    result$data['variant_id'] = l$variant_id;
    final l$price = price;
    result$data['price'] = l$price;
    final l$user_id = user_id;
    result$data['user_id'] = l$user_id;
    return result$data;
  }

  CopyWith$Input$order_items_insert_input<Input$order_items_insert_input>
      get copyWith => CopyWith$Input$order_items_insert_input(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$order_items_insert_input) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$item_quantity = item_quantity;
    final lOther$item_quantity = other.item_quantity;
    if (l$item_quantity != lOther$item_quantity) {
      return false;
    }
    final l$order_id = order_id;
    final lOther$order_id = other.order_id;
    if (l$order_id != lOther$order_id) {
      return false;
    }
    final l$variant_id = variant_id;
    final lOther$variant_id = other.variant_id;
    if (l$variant_id != lOther$variant_id) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (l$price != lOther$price) {
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
    final l$item_quantity = item_quantity;
    final l$order_id = order_id;
    final l$variant_id = variant_id;
    final l$price = price;
    final l$user_id = user_id;
    return Object.hashAll([
      l$item_quantity,
      l$order_id,
      l$variant_id,
      l$price,
      l$user_id,
    ]);
  }
}

abstract class CopyWith$Input$order_items_insert_input<TRes> {
  factory CopyWith$Input$order_items_insert_input(
    Input$order_items_insert_input instance,
    TRes Function(Input$order_items_insert_input) then,
  ) = _CopyWithImpl$Input$order_items_insert_input;

  factory CopyWith$Input$order_items_insert_input.stub(TRes res) =
      _CopyWithStubImpl$Input$order_items_insert_input;

  TRes call({
    int? item_quantity,
    int? order_id,
    int? variant_id,
    double? price,
    String? user_id,
  });
}

class _CopyWithImpl$Input$order_items_insert_input<TRes>
    implements CopyWith$Input$order_items_insert_input<TRes> {
  _CopyWithImpl$Input$order_items_insert_input(
    this._instance,
    this._then,
  );

  final Input$order_items_insert_input _instance;

  final TRes Function(Input$order_items_insert_input) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? item_quantity = _undefined,
    Object? order_id = _undefined,
    Object? variant_id = _undefined,
    Object? price = _undefined,
    Object? user_id = _undefined,
  }) =>
      _then(Input$order_items_insert_input._({
        ..._instance._$data,
        if (item_quantity != _undefined && item_quantity != null)
          'item_quantity': (item_quantity as int),
        if (order_id != _undefined && order_id != null)
          'order_id': (order_id as int),
        if (variant_id != _undefined && variant_id != null)
          'variant_id': (variant_id as int),
        if (price != _undefined && price != null) 'price': (price as double),
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as String),
      }));
}

class _CopyWithStubImpl$Input$order_items_insert_input<TRes>
    implements CopyWith$Input$order_items_insert_input<TRes> {
  _CopyWithStubImpl$Input$order_items_insert_input(this._res);

  TRes _res;

  call({
    int? item_quantity,
    int? order_id,
    int? variant_id,
    double? price,
    String? user_id,
  }) =>
      _res;
}

class Input$CartItemFilter {
  factory Input$CartItemFilter({required int id}) => Input$CartItemFilter._({
        r'id': id,
      });

  Input$CartItemFilter._(this._$data);

  factory Input$CartItemFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Input$CartItemFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$CartItemFilter<Input$CartItemFilter> get copyWith =>
      CopyWith$Input$CartItemFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CartItemFilter) || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$CartItemFilter<TRes> {
  factory CopyWith$Input$CartItemFilter(
    Input$CartItemFilter instance,
    TRes Function(Input$CartItemFilter) then,
  ) = _CopyWithImpl$Input$CartItemFilter;

  factory CopyWith$Input$CartItemFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CartItemFilter;

  TRes call({int? id});
}

class _CopyWithImpl$Input$CartItemFilter<TRes>
    implements CopyWith$Input$CartItemFilter<TRes> {
  _CopyWithImpl$Input$CartItemFilter(
    this._instance,
    this._then,
  );

  final Input$CartItemFilter _instance;

  final TRes Function(Input$CartItemFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Input$CartItemFilter._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Input$CartItemFilter<TRes>
    implements CopyWith$Input$CartItemFilter<TRes> {
  _CopyWithStubImpl$Input$CartItemFilter(this._res);

  TRes _res;

  call({int? id}) => _res;
}

class Input$CartItemUpdate {
  factory Input$CartItemUpdate({required int cart_quantity}) =>
      Input$CartItemUpdate._({
        r'cart_quantity': cart_quantity,
      });

  Input$CartItemUpdate._(this._$data);

  factory Input$CartItemUpdate.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$cart_quantity = data['cart_quantity'];
    result$data['cart_quantity'] = (l$cart_quantity as int);
    return Input$CartItemUpdate._(result$data);
  }

  Map<String, dynamic> _$data;

  int get cart_quantity => (_$data['cart_quantity'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$cart_quantity = cart_quantity;
    result$data['cart_quantity'] = l$cart_quantity;
    return result$data;
  }

  CopyWith$Input$CartItemUpdate<Input$CartItemUpdate> get copyWith =>
      CopyWith$Input$CartItemUpdate(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CartItemUpdate) || runtimeType != other.runtimeType) {
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
    final l$cart_quantity = cart_quantity;
    return Object.hashAll([l$cart_quantity]);
  }
}

abstract class CopyWith$Input$CartItemUpdate<TRes> {
  factory CopyWith$Input$CartItemUpdate(
    Input$CartItemUpdate instance,
    TRes Function(Input$CartItemUpdate) then,
  ) = _CopyWithImpl$Input$CartItemUpdate;

  factory CopyWith$Input$CartItemUpdate.stub(TRes res) =
      _CopyWithStubImpl$Input$CartItemUpdate;

  TRes call({int? cart_quantity});
}

class _CopyWithImpl$Input$CartItemUpdate<TRes>
    implements CopyWith$Input$CartItemUpdate<TRes> {
  _CopyWithImpl$Input$CartItemUpdate(
    this._instance,
    this._then,
  );

  final Input$CartItemUpdate _instance;

  final TRes Function(Input$CartItemUpdate) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? cart_quantity = _undefined}) =>
      _then(Input$CartItemUpdate._({
        ..._instance._$data,
        if (cart_quantity != _undefined && cart_quantity != null)
          'cart_quantity': (cart_quantity as int),
      }));
}

class _CopyWithStubImpl$Input$CartItemUpdate<TRes>
    implements CopyWith$Input$CartItemUpdate<TRes> {
  _CopyWithStubImpl$Input$CartItemUpdate(this._res);

  TRes _res;

  call({int? cart_quantity}) => _res;
}

class Input$CartUserIdFilter {
  factory Input$CartUserIdFilter({required String user_id}) =>
      Input$CartUserIdFilter._({
        r'user_id': user_id,
      });

  Input$CartUserIdFilter._(this._$data);

  factory Input$CartUserIdFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$user_id = data['user_id'];
    result$data['user_id'] = (l$user_id as String);
    return Input$CartUserIdFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  String get user_id => (_$data['user_id'] as String);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$user_id = user_id;
    result$data['user_id'] = l$user_id;
    return result$data;
  }

  CopyWith$Input$CartUserIdFilter<Input$CartUserIdFilter> get copyWith =>
      CopyWith$Input$CartUserIdFilter(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$CartUserIdFilter) ||
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

abstract class CopyWith$Input$CartUserIdFilter<TRes> {
  factory CopyWith$Input$CartUserIdFilter(
    Input$CartUserIdFilter instance,
    TRes Function(Input$CartUserIdFilter) then,
  ) = _CopyWithImpl$Input$CartUserIdFilter;

  factory CopyWith$Input$CartUserIdFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CartUserIdFilter;

  TRes call({String? user_id});
}

class _CopyWithImpl$Input$CartUserIdFilter<TRes>
    implements CopyWith$Input$CartUserIdFilter<TRes> {
  _CopyWithImpl$Input$CartUserIdFilter(
    this._instance,
    this._then,
  );

  final Input$CartUserIdFilter _instance;

  final TRes Function(Input$CartUserIdFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? user_id = _undefined}) => _then(Input$CartUserIdFilter._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as String),
      }));
}

class _CopyWithStubImpl$Input$CartUserIdFilter<TRes>
    implements CopyWith$Input$CartUserIdFilter<TRes> {
  _CopyWithStubImpl$Input$CartUserIdFilter(this._res);

  TRes _res;

  call({String? user_id}) => _res;
}

class Input$InsertCartItemInput {
  factory Input$InsertCartItemInput({
    required String user_id,
    required int variant_id,
    required int cart_quantity,
  }) =>
      Input$InsertCartItemInput._({
        r'user_id': user_id,
        r'variant_id': variant_id,
        r'cart_quantity': cart_quantity,
      });

  Input$InsertCartItemInput._(this._$data);

  factory Input$InsertCartItemInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$user_id = data['user_id'];
    result$data['user_id'] = (l$user_id as String);
    final l$variant_id = data['variant_id'];
    result$data['variant_id'] = (l$variant_id as int);
    final l$cart_quantity = data['cart_quantity'];
    result$data['cart_quantity'] = (l$cart_quantity as int);
    return Input$InsertCartItemInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get user_id => (_$data['user_id'] as String);
  int get variant_id => (_$data['variant_id'] as int);
  int get cart_quantity => (_$data['cart_quantity'] as int);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$user_id = user_id;
    result$data['user_id'] = l$user_id;
    final l$variant_id = variant_id;
    result$data['variant_id'] = l$variant_id;
    final l$cart_quantity = cart_quantity;
    result$data['cart_quantity'] = l$cart_quantity;
    return result$data;
  }

  CopyWith$Input$InsertCartItemInput<Input$InsertCartItemInput> get copyWith =>
      CopyWith$Input$InsertCartItemInput(
        this,
        (i) => i,
      );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Input$InsertCartItemInput) ||
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
      l$cart_quantity,
    ]);
  }
}

abstract class CopyWith$Input$InsertCartItemInput<TRes> {
  factory CopyWith$Input$InsertCartItemInput(
    Input$InsertCartItemInput instance,
    TRes Function(Input$InsertCartItemInput) then,
  ) = _CopyWithImpl$Input$InsertCartItemInput;

  factory CopyWith$Input$InsertCartItemInput.stub(TRes res) =
      _CopyWithStubImpl$Input$InsertCartItemInput;

  TRes call({
    String? user_id,
    int? variant_id,
    int? cart_quantity,
  });
}

class _CopyWithImpl$Input$InsertCartItemInput<TRes>
    implements CopyWith$Input$InsertCartItemInput<TRes> {
  _CopyWithImpl$Input$InsertCartItemInput(
    this._instance,
    this._then,
  );

  final Input$InsertCartItemInput _instance;

  final TRes Function(Input$InsertCartItemInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? user_id = _undefined,
    Object? variant_id = _undefined,
    Object? cart_quantity = _undefined,
  }) =>
      _then(Input$InsertCartItemInput._({
        ..._instance._$data,
        if (user_id != _undefined && user_id != null)
          'user_id': (user_id as String),
        if (variant_id != _undefined && variant_id != null)
          'variant_id': (variant_id as int),
        if (cart_quantity != _undefined && cart_quantity != null)
          'cart_quantity': (cart_quantity as int),
      }));
}

class _CopyWithStubImpl$Input$InsertCartItemInput<TRes>
    implements CopyWith$Input$InsertCartItemInput<TRes> {
  _CopyWithStubImpl$Input$InsertCartItemInput(this._res);

  TRes _res;

  call({
    String? user_id,
    int? variant_id,
    int? cart_quantity,
  }) =>
      _res;
}

enum Enum$OrderByDirection { asc, desc, $unknown }

String toJson$Enum$OrderByDirection(Enum$OrderByDirection e) {
  switch (e) {
    case Enum$OrderByDirection.asc:
      return r'asc';
    case Enum$OrderByDirection.desc:
      return r'desc';
    case Enum$OrderByDirection.$unknown:
      return r'$unknown';
  }
}

Enum$OrderByDirection fromJson$Enum$OrderByDirection(String value) {
  switch (value) {
    case r'asc':
      return Enum$OrderByDirection.asc;
    case r'desc':
      return Enum$OrderByDirection.desc;
    default:
      return Enum$OrderByDirection.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
