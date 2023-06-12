// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Loan _$$_LoanFromJson(Map<String, dynamic> json) => _$_Loan(
      refunded: json['refunded'] as int? ?? 0,
      userId: json['userId'] as int,
      keyId: json['keyId'] as int,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      key: json['key'] == null
          ? null
          : Key.fromJson(json['key'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LoanToJson(_$_Loan instance) => <String, dynamic>{
      'refunded': instance.refunded,
      'userId': instance.userId,
      'keyId': instance.keyId,
      'user': instance.user,
      'key': instance.key,
    };
