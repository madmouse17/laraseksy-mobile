import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:in_date_utils/in_date_utils.dart';

class dateController extends GetxController {
  var years = ''.obs;
  var dayscurrent = ''.obs;
  var months = ''.obs;
  var monthNum = ''.obs;
  var days = 0.obs;
  var listday = [].obs;
  var now = ''.obs;

  dateLoop() {
    var year = DateFormat.y();
    var month = DateFormat('MMM');
    var monthnum = DateFormat.M();
    var day = DateFormat.d();
    years.value = year.format(DateTime.now()).toString();
    months.value = month.format(DateTime.now()).toString();
    monthNum.value = monthnum.format(DateTime.now()).toString();
    dayscurrent.value = day.format(DateTime.now()).toString();
    now.value = DateTime.now().toString();
    // var dateUtility = DateUtils();r
    days.value =
        // ignore: deprecated_member_use
        DateUtils.getDaysInMonth(
            int.parse(years.value), int.parse(monthNum.value));
    // for (var i = 1; i < days.value; i++) {
    //   listday.add(getDay((i < 9) ? '0${i.toString()}' : i.toString()));
    // }
  }

  getDay(String days) async {
    var datestring = "${days}-${monthNum.value}-${years.value} 05:57:58";
    var date = DateTime.parse(datestring);
    var day = DateFormat.EEEE();
    return day.format(date).toString();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    dateLoop();

    super.onInit();
  }
}
