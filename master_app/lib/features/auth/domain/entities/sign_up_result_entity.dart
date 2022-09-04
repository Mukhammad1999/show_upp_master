import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class SignUpResult extends Equatable {
  const SignUpResult({
    required this.message,
    required this.additionalInfo,
    this.verificationCode,
    this.isSuccessful = false,
  });
  final String message;
  final bool isSuccessful;
  final int? verificationCode;
  final String additionalInfo;

  @override
  List<Object?> get props => [
        message,
        verificationCode,
        additionalInfo,
        isSuccessful,
      ];
}
