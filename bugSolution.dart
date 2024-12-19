```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      // Handle non-200 status codes appropriately. For instance, throw a custom exception with more context.
      throw CustomException('Failed to load data: ${response.statusCode}, ${response.body}');
    }
  } on CustomException catch (e) {
    // Handle CustomException specifically, providing detailed logging or user feedback.
    print("Custom Exception: ${e.message}");
  } catch (e) {
    // Handle other exceptions.
    print('Error: $e');
    // Optionally rethrow the exception to be handled further up the call stack if needed.
    rethrow;
  }
}

class CustomException implements Exception {
  final String message;
  CustomException(this.message);

  @override
  String toString() => message;
}
```