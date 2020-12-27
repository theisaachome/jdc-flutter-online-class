import 'package:intl/intl.dart';

String myDateFormat(DateTime date) {
  return new DateFormat.yMMMEd().format(date);
}
