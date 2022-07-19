import 'package:get/get.dart';
import 'package:laraseksy_sekali/Pages/dashboard.dart';
import 'package:laraseksy_sekali/Pages/login.dart';
import 'package:laraseksy_sekali/Routers/routeName.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: routeName.login,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: routeName.dashboard,
      page: () => DashboardScreen(),
    )
  ];
}
