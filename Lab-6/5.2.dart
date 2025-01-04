import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
// API endpoint
  var apiUrl = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
  try {
// Make a GET request
    var response = await http.get(apiUrl);
// Check if the request was successful (status code 200)
    if (response.statusCode == 200) {
// Parse the response JSON
      var data = jsonDecode(response.body);
// Display the result
      print('Title: ${data['title']}');
      print('Body: ${data['body']}');
    } else {
// If the server did not return a 200 OK response,
// throw an exception.
      throw Exception(
          'Failed to load data. Status Code: ${response.statusCode}');
    }
  } catch (error) {
    print('Error: $error');
  }
}

void main() {
  print("Fetching data from API...");
  fetchData();
}
