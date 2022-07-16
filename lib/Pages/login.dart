import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laraseksy_sekali/Controllers/_partials/Constant.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laraseksy_sekali/Routers/routeName.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          bottom: -250,
          right: 5,
          child: Container(
            alignment: Alignment.topLeft,
            height: Get.mediaQuery.size.height / 2,
            width: Get.mediaQuery.size.width / 2,
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: -220,
          right: 6,
          child: Container(
            alignment: Alignment.topLeft,
            height: Get.mediaQuery.size.height / 2,
            width: Get.mediaQuery.size.width / 2,
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.35),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: -200,
          child: Container(
            alignment: Alignment.topLeft,
            height: Get.mediaQuery.size.height / 2,
            width: Get.mediaQuery.size.width / 2,
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: -230,
          child: Container(
            alignment: Alignment.topLeft,
            height: Get.mediaQuery.size.height / 2,
            width: Get.mediaQuery.size.width / 2,
            decoration: BoxDecoration(
              color: secondaryColor.withOpacity(0.35),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: Get.mediaQuery.size.height / 3,
          child: Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: thirdColor.withOpacity(0.1),
                    offset: Offset(10, 20),
                    blurRadius: 10)
              ],
            ),
            height: Get.mediaQuery.size.height / 3,
            width: Get.mediaQuery.size.width / 1.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: primaryColor.withOpacity(0.1),
                      filled: true,
                      hintText: 'Masukkan NIS',
                      suffixIcon: Icon(Icons.people_alt)),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: primaryColor.withOpacity(0.1),
                        filled: true,
                        hintText: 'Masukkan Password',
                        suffixIcon: Icon(Icons.visibility)),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: Get.mediaQuery.size.height / 2.3,
          right: Get.mediaQuery.size.width * 0.1,
          child: Container(
              alignment: Alignment.center,
              height: Get.mediaQuery.size.height / 8,
              width: Get.mediaQuery.size.width / 4,
              decoration: BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      color: primaryColor.withOpacity(0.2),
                      offset: Offset(-10, -1),
                      blurRadius: 2,
                      spreadRadius: 5)
                ],
              ),
              child: IconButton(
                  onPressed: () => Get.toNamed(routeName.dashboard),
                  icon: Icon(
                    Icons.login,
                    color: Colors.white,
                    size: Get.mediaQuery.size.height * 0.035,
                  ))),
        ),
        Positioned(
          top: Get.mediaQuery.size.height / 2.3,
          left: 20,
          child: SizedBox(
            height: Get.mediaQuery.size.height / 8,
            width: Get.mediaQuery.size.width / 2,
            child: TextLiquidFill(
              text: 'MASUK',
              waveColor: primaryColor,
              boxBackgroundColor: Colors.white,
              textStyle: TextStyle(
                fontFamily: "Cairo",
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
              loadDuration: Duration(seconds: 20),
              boxHeight: 100,
            ),
          ),
        ),
      ],
    ));
  }
}
