import 'dart:io';

Future<void> readFileAsync(String filePath) async {
  try {
    String content = await File(filePath).readAsString();
    print("File Content:\n$content");
  } catch (e) {
    print("Error reading file: $e");
  }
}

void main() async {
  String filePath = "pubspec.yaml";
  print("Reading file asynchronously...");
  await readFileAsync(filePath);
}
