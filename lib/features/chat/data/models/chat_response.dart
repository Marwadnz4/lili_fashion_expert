import 'package:json_annotation/json_annotation.dart';
part 'chat_response.g.dart';

@JsonSerializable()
class ChatResponse {
  String? message;
  bool? status;
  int? code;

  ChatResponse({this.message, this.status, this.code});

  factory ChatResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatResponseFromJson(json);
}
