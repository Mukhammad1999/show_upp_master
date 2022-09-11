abstract class AppException implements Exception {
  AppException({this.message});

  final String? message;
}

class PermissionException extends AppException {
  PermissionException({super.message});
}

class ServiceEnabledException extends AppException {
  ServiceEnabledException({super.message});
}
