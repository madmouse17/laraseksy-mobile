import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:laraseksy_sekali/Controllers/_partials/Constant.dart';
import 'package:laraseksy_sekali/Controllers/_partials/dateController.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dt = Get.put(dateController());
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                      itemExtent: 150,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 10),
                            margin: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: fiveColor),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(dt.months.value.toString()),
                                    Text(dt.years.value.toString()),
                                  ],
                                ),
                                Text(
                                  (index < 9)
                                      ? '0${index + 1}'
                                      : '${index + 1}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:
                                          Get.mediaQuery.size.height * 0.01),
                                ),
                                Text(dt.now.value),
                              ],
                            ),
                          ),
                      itemCount: dt.days.value),
                ),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
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
    );
  }
}
