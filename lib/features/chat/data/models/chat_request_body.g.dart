// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRequestBody _$ChatRequestBodyFromJson(Map<String, dynamic> json) =>
    ChatRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$ChatRequestBodyToJson(ChatRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
