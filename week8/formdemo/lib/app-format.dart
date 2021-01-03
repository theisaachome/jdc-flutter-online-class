import 'package:intl/intl.dart';

String appDateForm(DateTime date) {
  return DateFormat.yMMMEd().format(date);
}
