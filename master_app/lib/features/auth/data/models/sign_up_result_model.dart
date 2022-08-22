// ignore_for_file: public_member_api_docs, sort_constructors_first, overridden_fields, annotate_overrides
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:master_app/features/auth/domain/entities/sign_up_result_entity.dart';

@immutable
class SignUpResultModel extends SignUpResult {
  final String message;
  final bool isSuccessful;
  final int? verificationCode;
  final String additionalInfo;
  const SignUpResultModel({
    required this.message,
    required this.isSuccessful,
    this.verificationCode,
    required this.additionalInfo,
  }) : super(
          verificationCode: verificationCode,
          message: message,
          isSuccessful: isSuccessful,
          additionalInfo: additionalInfo,
        );
  @override
  List<Object?> get props =>
      [message, isSuccessful, additionalInfo, verificationCode];

  SignUpResultModel copyWith({
    String? message,
    bool? isSuccessful,
    int? verificationCode,
    String? additionalInfo,
  }) {
    return SignUpResultModel(
      message: message ?? this.message,
      isSuccessful: isSuccessful ?? this.isSuccessful,
      verificationCode: verificationCode ?? this.verificationCode,
      additionalInfo: additionalInfo ?? this.additionalInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'isSuccessful': isSuccessful,
      'verificationCode': verificationCode,
      'additionalInfo': additionalInfo,
    };
  }

  factory SignUpResultModel.fromMap(Map<String, dynamic> map) {
    final body = map['body'];
    return SignUpResultModel(
      message: body['message'] as String,
      isSuccessful: map['statusCode'] as int == 201,
      verificationCode: body['verificationCode'] != null
          ? body['verificationCode'] as int
          : null,
      additionalInfo: body['additionalInfo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SignUpResultModel.fromJson(String source) =>
      SignUpResultModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SignUpResultModel(message: $message, isSuccessful: $isSuccessful, verificationCode: $verificationCode, additionalInfo: $additionalInfo)';
  }
}
