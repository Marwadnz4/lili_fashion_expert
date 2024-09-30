
import 'package:json_annotation/json_annotation.dart';
part 'chat_request_body.g.dart';

@JsonSerializable()
class ChatRequestBody{
  final String email;
  final String password;

  ChatRequestBody({required this.email, required this.password});

  Map<String, dynamic> toJson() => _$ChatRequestBodyToJson(this);
}