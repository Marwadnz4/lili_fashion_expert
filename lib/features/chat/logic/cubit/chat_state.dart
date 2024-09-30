import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/api_error_model.dart';

part 'chat_state.freezed.dart';

@freezed
class ChatState<T> with _$ChatState<T> {
  const factory ChatState.initial() = _Initial;
  
  const factory ChatState.chatLoading() = ChatLoading;
  const factory ChatState.chatSuccess(T data) = ChatSuccess<T>;
  const factory ChatState.chatError(ApiErrorModel apiErrorModel) = ChatError;

    // const factory ChatState.pickImage() = PickImage;
}
