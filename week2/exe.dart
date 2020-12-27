void main() {
  int studentMark;

  double tempFarenheit = 90.25;
  double tempCelsius = (tempFarenheit - 32) / 1.8;

  print(
      "${tempFarenheit.toStringAsFixed(1)}F = ${tempCelsius.toStringAsFixed(1)}C");
  
  String appVersion = "0.1.1";
  String a = "0.1.0";
  print(appVersion);
  print(a);
}
