```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data successfully
      final jsonData = jsonDecode(response.body);
      print(jsonData);
    } else {
      // Handle non-200 status codes
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions during the API call
    print('Error: $e');
    // Rethrow the exception to be handled further up the call stack if needed
    rethrow;
  }
}
```