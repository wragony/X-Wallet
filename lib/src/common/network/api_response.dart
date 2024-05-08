import 'dart:convert';

class ApiResponse<T> {
  int? code;
  String? message;
  T? data;

  ApiResponse();

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    final ApiResponse<T> apiResponseEntity = ApiResponse<T>();
    final int? code = json['code'];
    if (code != null) {
      apiResponseEntity.code = code;
    }
    final String? message = json['message'];
    if (message != null) {
      apiResponseEntity.message = message;
    }
    T? data;
    if (json['data'] != null) {
      data = json['data'];
    }
    if (data != null) {
      apiResponseEntity.data = data;
    }
    return apiResponseEntity;
  }

  Map<String, dynamic> toJson() {
    ApiResponse entity = this;
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = entity.code;
    data['message'] = entity.message;
    data['data'] = entity.data;
    return data;
  }

  @override
  String toString() {
    return jsonEncode(this);
  }
}
