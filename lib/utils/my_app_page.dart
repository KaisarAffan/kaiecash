import 'package:get/get.dart';
import 'package:kaiecash/Bindings/bindings.dart';
import 'package:kaiecash/Widget/ComponentPage/payment_page.dart';
import 'package:kaiecash/page/dashboard.dart';
import 'package:kaiecash/page/menus/home.dart';
import 'package:kaiecash/page/menus/profile.dart';
import 'package:kaiecash/page/menus/qris.dart';
import 'package:kaiecash/utils/route.dart';

class MyAppPage {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.dashboad,
        page: () => DashboardPage(),
        binding: MyBindings()),
    GetPage(
      name: AppRoutes.homePage,
      page: () => HomeMenu(),
    ),
    GetPage(
      name: AppRoutes.profilePage,
      page: () => ProfileMenu(),
    ),
    GetPage(
      name: AppRoutes.qrisPage,
      page: () => QrisMenu(),
    ),
    GetPage(
      name: AppRoutes.paymentPage,
      page: () => PaymentPage(),
    ),
  ];
}
