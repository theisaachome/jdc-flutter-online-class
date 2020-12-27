
/// 
void main() {
  String title = "flutter COurse";
  var isStudent = true;

  var isUniform = false;
  var result = title.length > 10
      ? (isUniform ? " Can enter School" : " Go Home")
      : " Not He is Employeed";
  print(result);
}
