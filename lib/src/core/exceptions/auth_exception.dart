sealed class AuthException implements Exception {
  final String message;
  const AuthException({required this.message});
}

class AuthError extends AuthException {
  AuthError({required super.message});
}

class AuthUnauthorizedException extends AuthException {
  AuthUnauthorizedException() : super(message: '');
}
