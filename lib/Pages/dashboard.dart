import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:get/get.dart';
import 'package:laraseksy_sekali/Controllers/_partials/dateController.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dt = Get.put(dateController());
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
                child: ListView.builder(
                    itemExtent: 150,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Container(
                          margin: EdgeInsets.all(5.0),
                          color: Colors.orangeAccent,
                        ),
                    itemCount: 20),
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
    );
  }
}
