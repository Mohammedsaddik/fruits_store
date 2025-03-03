class CustomException implements Exception {
  final String message;

  const CustomException([this.message = ""]);

  @override
  String toString() => "CustomException: $message";
}
