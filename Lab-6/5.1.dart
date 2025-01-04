Future<void> simulateAsyncOperation() async {
  await Future.delayed(Duration(seconds: 2));
  print("Operation completed after 2 seconds.");
}

void main() {
  print("Starting operation...");
  simulateAsyncOperation();
  print("This prints immediately while the operation is running.");
}
