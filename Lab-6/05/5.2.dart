import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
  // final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print("Title: ${data['title']}");
    print("Body: ${data['body']}");
  } else {
    print("Failed to fetch data. Status code: ${response.statusCode}");
  }
}

void main() {
  print("Fetching data from API...");
  fetchData();
}
