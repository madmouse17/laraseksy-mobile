import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:in_date_utils/in_date_utils.dart';

class dateController extends GetxController {
  var years = ''.obs;
  var days = ''.obs;
  var months = ''.obs;
  dateLoop() {
    var year = DateFormat.y();
    var month = DateFormat.M();
    var day = DateFormat.d();
    years.value = year.format(DateTime.now()).toString();
    months.value = month.format(DateTime.now()).toString();
    days.value = day.format(DateTime.now()).toString();

    // var dateUtility = DateUtils();
    var day1 =
        // ignore: deprecated_member_use
        DateUtils.getDaysInMonth(int.parse(days.value), int.parse(years.value));
    print(day1);
  }

  @override
  void onInit() {
    // TODO: implement onInit
    dateLoop();
    super.onInit();
  }
}
