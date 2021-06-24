void main() async {
  final resultRole = await reportUserRole();
  print(resultRole);
}

Future<String> fetchUserRole() {
  return Future.delayed(Duration(seconds: 1), () => "Admin Role");
}

Future<String> reportUserRole() async {
  final role = await fetchUserRole();
  return "User Role : $role";
}
