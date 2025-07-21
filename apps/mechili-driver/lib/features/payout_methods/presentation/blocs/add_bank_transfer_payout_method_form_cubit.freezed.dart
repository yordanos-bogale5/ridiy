// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_bank_transfer_payout_method_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddBankTransferPayoutMethodFormState {
  String? get name;
  String? get payoutMethodId;
  String? get accountNumber;
  String? get routingNumber;
  String? get bankName;
  String? get accountHolderName;
  String? get branchName;
  bool get isDefault;
  String? get accountHolderAddress;
  String? get accountHolderCity;
  String? get accountHolderState;
  String? get accountHolderZip;
  String? get accountHolderCountry;
  String? get accountHolderPhone;
  DateTime? get accountHolderDateOfBirth;
  ApiResponse<Mutation$CreatePayoutAccount> get createPayoutAccountState;

  /// Create a copy of AddBankTransferPayoutMethodFormState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddBankTransferPayoutMethodFormStateCopyWith<
          AddBankTransferPayoutMethodFormState>
      get copyWith => _$AddBankTransferPayoutMethodFormStateCopyWithImpl<
              AddBankTransferPayoutMethodFormState>(
          this as AddBankTransferPayoutMethodFormState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddBankTransferPayoutMethodFormState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.payoutMethodId, payoutMethodId) ||
                other.payoutMethodId == payoutMethodId) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.routingNumber, routingNumber) ||
                other.routingNumber == routingNumber) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountHolderName, accountHolderName) ||
                other.accountHolderName == accountHolderName) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.accountHolderAddress, accountHolderAddress) ||
                other.accountHolderAddress == accountHolderAddress) &&
            (identical(other.accountHolderCity, accountHolderCity) ||
                other.accountHolderCity == accountHolderCity) &&
            (identical(other.accountHolderState, accountHolderState) ||
                other.accountHolderState == accountHolderState) &&
            (identical(other.accountHolderZip, accountHolderZip) ||
                other.accountHolderZip == accountHolderZip) &&
            (identical(other.accountHolderCountry, accountHolderCountry) ||
                other.accountHolderCountry == accountHolderCountry) &&
            (identical(other.accountHolderPhone, accountHolderPhone) ||
                other.accountHolderPhone == accountHolderPhone) &&
            (identical(
                    other.accountHolderDateOfBirth, accountHolderDateOfBirth) ||
                other.accountHolderDateOfBirth == accountHolderDateOfBirth) &&
            (identical(
                    other.createPayoutAccountState, createPayoutAccountState) ||
                other.createPayoutAccountState == createPayoutAccountState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      payoutMethodId,
      accountNumber,
      routingNumber,
      bankName,
      accountHolderName,
      branchName,
      isDefault,
      accountHolderAddress,
      accountHolderCity,
      accountHolderState,
      accountHolderZip,
      accountHolderCountry,
      accountHolderPhone,
      accountHolderDateOfBirth,
      createPayoutAccountState);

  @override
  String toString() {
    return 'AddBankTransferPayoutMethodFormState(name: $name, payoutMethodId: $payoutMethodId, accountNumber: $accountNumber, routingNumber: $routingNumber, bankName: $bankName, accountHolderName: $accountHolderName, branchName: $branchName, isDefault: $isDefault, accountHolderAddress: $accountHolderAddress, accountHolderCity: $accountHolderCity, accountHolderState: $accountHolderState, accountHolderZip: $accountHolderZip, accountHolderCountry: $accountHolderCountry, accountHolderPhone: $accountHolderPhone, accountHolderDateOfBirth: $accountHolderDateOfBirth, createPayoutAccountState: $createPayoutAccountState)';
  }
}

/// @nodoc
abstract mixin class $AddBankTransferPayoutMethodFormStateCopyWith<$Res> {
  factory $AddBankTransferPayoutMethodFormStateCopyWith(
          AddBankTransferPayoutMethodFormState value,
          $Res Function(AddBankTransferPayoutMethodFormState) _then) =
      _$AddBankTransferPayoutMethodFormStateCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? payoutMethodId,
      String? accountNumber,
      String? routingNumber,
      String? bankName,
      String? accountHolderName,
      String? branchName,
      bool isDefault,
      String? accountHolderAddress,
      String? accountHolderCity,
      String? accountHolderState,
      String? accountHolderZip,
      String? accountHolderCountry,
      String? accountHolderPhone,
      DateTime? accountHolderDateOfBirth,
      ApiResponse<Mutation$CreatePayoutAccount> createPayoutAccountState});

  $ApiResponseCopyWith<Mutation$CreatePayoutAccount, $Res>
      get createPayoutAccountState;
}

/// @nodoc
class _$AddBankTransferPayoutMethodFormStateCopyWithImpl<$Res>
    implements $AddBankTransferPayoutMethodFormStateCopyWith<$Res> {
  _$AddBankTransferPayoutMethodFormStateCopyWithImpl(this._self, this._then);

  final AddBankTransferPayoutMethodFormState _self;
  final $Res Function(AddBankTransferPayoutMethodFormState) _then;

  /// Create a copy of AddBankTransferPayoutMethodFormState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? payoutMethodId = freezed,
    Object? accountNumber = freezed,
    Object? routingNumber = freezed,
    Object? bankName = freezed,
    Object? accountHolderName = freezed,
    Object? branchName = freezed,
    Object? isDefault = null,
    Object? accountHolderAddress = freezed,
    Object? accountHolderCity = freezed,
    Object? accountHolderState = freezed,
    Object? accountHolderZip = freezed,
    Object? accountHolderCountry = freezed,
    Object? accountHolderPhone = freezed,
    Object? accountHolderDateOfBirth = freezed,
    Object? createPayoutAccountState = null,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      payoutMethodId: freezed == payoutMethodId
          ? _self.payoutMethodId
          : payoutMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      routingNumber: freezed == routingNumber
          ? _self.routingNumber
          : routingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _self.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderName: freezed == accountHolderName
          ? _self.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      branchName: freezed == branchName
          ? _self.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      accountHolderAddress: freezed == accountHolderAddress
          ? _self.accountHolderAddress
          : accountHolderAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderCity: freezed == accountHolderCity
          ? _self.accountHolderCity
          : accountHolderCity // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderState: freezed == accountHolderState
          ? _self.accountHolderState
          : accountHolderState // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderZip: freezed == accountHolderZip
          ? _self.accountHolderZip
          : accountHolderZip // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderCountry: freezed == accountHolderCountry
          ? _self.accountHolderCountry
          : accountHolderCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderPhone: freezed == accountHolderPhone
          ? _self.accountHolderPhone
          : accountHolderPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderDateOfBirth: freezed == accountHolderDateOfBirth
          ? _self.accountHolderDateOfBirth
          : accountHolderDateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createPayoutAccountState: null == createPayoutAccountState
          ? _self.createPayoutAccountState
          : createPayoutAccountState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$CreatePayoutAccount>,
    ));
  }

  /// Create a copy of AddBankTransferPayoutMethodFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$CreatePayoutAccount, $Res>
      get createPayoutAccountState {
    return $ApiResponseCopyWith<Mutation$CreatePayoutAccount, $Res>(
        _self.createPayoutAccountState, (value) {
      return _then(_self.copyWith(createPayoutAccountState: value));
    });
  }
}

/// @nodoc

class _AddBankTransferPayoutMethodFormState
    extends AddBankTransferPayoutMethodFormState {
  const _AddBankTransferPayoutMethodFormState(
      {this.name,
      this.payoutMethodId,
      this.accountNumber,
      this.routingNumber,
      this.bankName,
      this.accountHolderName,
      this.branchName,
      this.isDefault = false,
      this.accountHolderAddress,
      this.accountHolderCity,
      this.accountHolderState,
      this.accountHolderZip,
      this.accountHolderCountry,
      this.accountHolderPhone,
      this.accountHolderDateOfBirth,
      this.createPayoutAccountState = const ApiResponseInitial()})
      : super._();

  @override
  final String? name;
  @override
  final String? payoutMethodId;
  @override
  final String? accountNumber;
  @override
  final String? routingNumber;
  @override
  final String? bankName;
  @override
  final String? accountHolderName;
  @override
  final String? branchName;
  @override
  @JsonKey()
  final bool isDefault;
  @override
  final String? accountHolderAddress;
  @override
  final String? accountHolderCity;
  @override
  final String? accountHolderState;
  @override
  final String? accountHolderZip;
  @override
  final String? accountHolderCountry;
  @override
  final String? accountHolderPhone;
  @override
  final DateTime? accountHolderDateOfBirth;
  @override
  @JsonKey()
  final ApiResponse<Mutation$CreatePayoutAccount> createPayoutAccountState;

  /// Create a copy of AddBankTransferPayoutMethodFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddBankTransferPayoutMethodFormStateCopyWith<
          _AddBankTransferPayoutMethodFormState>
      get copyWith => __$AddBankTransferPayoutMethodFormStateCopyWithImpl<
          _AddBankTransferPayoutMethodFormState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddBankTransferPayoutMethodFormState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.payoutMethodId, payoutMethodId) ||
                other.payoutMethodId == payoutMethodId) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.routingNumber, routingNumber) ||
                other.routingNumber == routingNumber) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountHolderName, accountHolderName) ||
                other.accountHolderName == accountHolderName) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.accountHolderAddress, accountHolderAddress) ||
                other.accountHolderAddress == accountHolderAddress) &&
            (identical(other.accountHolderCity, accountHolderCity) ||
                other.accountHolderCity == accountHolderCity) &&
            (identical(other.accountHolderState, accountHolderState) ||
                other.accountHolderState == accountHolderState) &&
            (identical(other.accountHolderZip, accountHolderZip) ||
                other.accountHolderZip == accountHolderZip) &&
            (identical(other.accountHolderCountry, accountHolderCountry) ||
                other.accountHolderCountry == accountHolderCountry) &&
            (identical(other.accountHolderPhone, accountHolderPhone) ||
                other.accountHolderPhone == accountHolderPhone) &&
            (identical(
                    other.accountHolderDateOfBirth, accountHolderDateOfBirth) ||
                other.accountHolderDateOfBirth == accountHolderDateOfBirth) &&
            (identical(
                    other.createPayoutAccountState, createPayoutAccountState) ||
                other.createPayoutAccountState == createPayoutAccountState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      payoutMethodId,
      accountNumber,
      routingNumber,
      bankName,
      accountHolderName,
      branchName,
      isDefault,
      accountHolderAddress,
      accountHolderCity,
      accountHolderState,
      accountHolderZip,
      accountHolderCountry,
      accountHolderPhone,
      accountHolderDateOfBirth,
      createPayoutAccountState);

  @override
  String toString() {
    return 'AddBankTransferPayoutMethodFormState(name: $name, payoutMethodId: $payoutMethodId, accountNumber: $accountNumber, routingNumber: $routingNumber, bankName: $bankName, accountHolderName: $accountHolderName, branchName: $branchName, isDefault: $isDefault, accountHolderAddress: $accountHolderAddress, accountHolderCity: $accountHolderCity, accountHolderState: $accountHolderState, accountHolderZip: $accountHolderZip, accountHolderCountry: $accountHolderCountry, accountHolderPhone: $accountHolderPhone, accountHolderDateOfBirth: $accountHolderDateOfBirth, createPayoutAccountState: $createPayoutAccountState)';
  }
}

/// @nodoc
abstract mixin class _$AddBankTransferPayoutMethodFormStateCopyWith<$Res>
    implements $AddBankTransferPayoutMethodFormStateCopyWith<$Res> {
  factory _$AddBankTransferPayoutMethodFormStateCopyWith(
          _AddBankTransferPayoutMethodFormState value,
          $Res Function(_AddBankTransferPayoutMethodFormState) _then) =
      __$AddBankTransferPayoutMethodFormStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? payoutMethodId,
      String? accountNumber,
      String? routingNumber,
      String? bankName,
      String? accountHolderName,
      String? branchName,
      bool isDefault,
      String? accountHolderAddress,
      String? accountHolderCity,
      String? accountHolderState,
      String? accountHolderZip,
      String? accountHolderCountry,
      String? accountHolderPhone,
      DateTime? accountHolderDateOfBirth,
      ApiResponse<Mutation$CreatePayoutAccount> createPayoutAccountState});

  @override
  $ApiResponseCopyWith<Mutation$CreatePayoutAccount, $Res>
      get createPayoutAccountState;
}

/// @nodoc
class __$AddBankTransferPayoutMethodFormStateCopyWithImpl<$Res>
    implements _$AddBankTransferPayoutMethodFormStateCopyWith<$Res> {
  __$AddBankTransferPayoutMethodFormStateCopyWithImpl(this._self, this._then);

  final _AddBankTransferPayoutMethodFormState _self;
  final $Res Function(_AddBankTransferPayoutMethodFormState) _then;

  /// Create a copy of AddBankTransferPayoutMethodFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? payoutMethodId = freezed,
    Object? accountNumber = freezed,
    Object? routingNumber = freezed,
    Object? bankName = freezed,
    Object? accountHolderName = freezed,
    Object? branchName = freezed,
    Object? isDefault = null,
    Object? accountHolderAddress = freezed,
    Object? accountHolderCity = freezed,
    Object? accountHolderState = freezed,
    Object? accountHolderZip = freezed,
    Object? accountHolderCountry = freezed,
    Object? accountHolderPhone = freezed,
    Object? accountHolderDateOfBirth = freezed,
    Object? createPayoutAccountState = null,
  }) {
    return _then(_AddBankTransferPayoutMethodFormState(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      payoutMethodId: freezed == payoutMethodId
          ? _self.payoutMethodId
          : payoutMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      accountNumber: freezed == accountNumber
          ? _self.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      routingNumber: freezed == routingNumber
          ? _self.routingNumber
          : routingNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: freezed == bankName
          ? _self.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderName: freezed == accountHolderName
          ? _self.accountHolderName
          : accountHolderName // ignore: cast_nullable_to_non_nullable
              as String?,
      branchName: freezed == branchName
          ? _self.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String?,
      isDefault: null == isDefault
          ? _self.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      accountHolderAddress: freezed == accountHolderAddress
          ? _self.accountHolderAddress
          : accountHolderAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderCity: freezed == accountHolderCity
          ? _self.accountHolderCity
          : accountHolderCity // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderState: freezed == accountHolderState
          ? _self.accountHolderState
          : accountHolderState // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderZip: freezed == accountHolderZip
          ? _self.accountHolderZip
          : accountHolderZip // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderCountry: freezed == accountHolderCountry
          ? _self.accountHolderCountry
          : accountHolderCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderPhone: freezed == accountHolderPhone
          ? _self.accountHolderPhone
          : accountHolderPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      accountHolderDateOfBirth: freezed == accountHolderDateOfBirth
          ? _self.accountHolderDateOfBirth
          : accountHolderDateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createPayoutAccountState: null == createPayoutAccountState
          ? _self.createPayoutAccountState
          : createPayoutAccountState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$CreatePayoutAccount>,
    ));
  }

  /// Create a copy of AddBankTransferPayoutMethodFormState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$CreatePayoutAccount, $Res>
      get createPayoutAccountState {
    return $ApiResponseCopyWith<Mutation$CreatePayoutAccount, $Res>(
        _self.createPayoutAccountState, (value) {
      return _then(_self.copyWith(createPayoutAccountState: value));
    });
  }
}

// dart format on
