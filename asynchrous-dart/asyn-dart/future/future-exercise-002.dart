void main() async {
  countLoginAttempt(7);
  await reportLogins();
}

Future<void> reportLogins() async {
  print("User Attempting login....");
  final times = await fetchloginAmount();
  print("Total number of logins: $times");
}

Future<int> fetchloginAmount() {
  return Future.delayed(Duration(seconds: 7), () => 7);
}

void countLoginAttempt(int seconds) {
  for (var i = 1; i <= seconds; i++) {
    Future.delayed(
      Duration(seconds: i),
      () => print("Attempting : $i"),
    );
  }
}
