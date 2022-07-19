import 'dart:convert';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:in_date_utils/in_date_utils.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class dateController extends GetxController {
  var years = ''.obs;
  var dayscurrent = ''.obs;
  var months = ''.obs;
  var monthNum = ''.obs;
  var days = 0.obs;
  var listday = [].obs;
  var now = ''.obs;
  final ItemController = ItemScrollController();

  Future dateLoop() async {
    var year = DateFormat.y();
    var month = DateFormat('MMM');
    var monthnum = DateFormat.M();
    var day = DateFormat.d();
    years.value = year.format(DateTime.now()).toString();
    months.value = month.format(DateTime.now()).toString();
    monthNum.value = monthnum.format(DateTime.now()).toString();
    dayscurrent.value = day.format(DateTime.now()).toString();
    print(dayscurrent.value);
    now.value = DateTime.now().toString();
    // var dateUtility = DateUtils();r
    days.value =
        // ignore: deprecated_member_use
        DateUtils.getDaysInMonth(
            int.parse(years.value), int.parse(monthNum.value));
    await getDay();
  }

  getDay() async {
    for (var i = 1; i <= days.value; i++) {
      var monthval = int.parse(monthNum.value) <= 9
          ? '0${monthNum.value}'
          : monthNum.value;
      var ha = i <= 9 ? '0${i}' : i;
      var datestring = "${years.value}-$monthval-$ha";
      var date = DateTime.parse(datestring);
      var day = DateFormat.EEEE();
      var tes = day.format(date).toString();

      listday.add(tes.toString());
    }
    // print(listday);
  }

  scrollto() {
    ItemController.scrollTo(
        index: int.parse(dayscurrent.value) - 1,
        duration: Duration(seconds: 2));
  }

  @override
  void onInit() {
    // TODO: implement onInit
    dateLoop();

    super.onInit();
  }
}
