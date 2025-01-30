```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the JSON response
      final jsonData = jsonDecode(response.body);
      // Use the data
    } else {
      // Handle the error or rethrow it
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions, rethrow for proper error handling up the call stack.
    print('Error: $e');
    rethrow; // Re-throw the exception
  }
}
```