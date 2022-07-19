import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:laraseksy_sekali/Controllers/_partials/Constant.dart';
import 'package:laraseksy_sekali/Controllers/_partials/dateController.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  final dt = Get.put(dateController());
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  child: ScrollablePositionedList.builder(
                    // itemExtent: 150,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color:
                                (index + 1 == int.parse(dt.dayscurrent.value))
                                    ? Colors.green
                                    : fiveColor),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('${dt.months.value} - ',
                                  style: TextStyle(
                                      color: dt.listday[index] == "Minggu"
                                          ? Colors.red
                                          : (index + 1 ==
                                                  int.parse(
                                                      dt.dayscurrent.value))
                                              ? Colors.green
                                              : Colors.black)),
                              Text(
                                dt.years.value.toString(),
                                style: TextStyle(
                                    color: dt.listday[index] == "Minggu"
                                        ? Colors.red
                                        : (index + 1 ==
                                                int.parse(dt.dayscurrent.value))
                                            ? Colors.green
                                            : Colors.black),
                              ),
                            ],
                          ),
                          Text(
                            (index < 9) ? '0${index + 1}' : '${index + 1}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Get.mediaQuery.size.height * 0.02,
                                color: dt.listday[index] == "Minggu"
                                    ? Colors.red
                                    : (index + 1 ==
                                            int.parse(dt.dayscurrent.value))
                                        ? Colors.green
                                        : Colors.black),
                          ),
                          Text(
                            dt.listday[index],
                            style: TextStyle(
                                color: dt.listday[index] == "Minggu"
                                    ? Colors.red
                                    : (index + 1 ==
                                            int.parse(dt.dayscurrent.value))
                                        ? Colors.green
                                        : Colors.black),
                          ),
                        ],
                      ),
                    ),
                    itemCount: dt.days.value,
                    itemScrollController: dt.ItemController,
                  ),
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1.5,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                    margin: EdgeInsets.all(5.0),
                    color: Colors.yellow,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('to Days'),
          IconButton(
              onPressed: () => dt.scrollto(), icon: Icon(Icons.next_plan)),
        ],
      ),
    );
  }
}
