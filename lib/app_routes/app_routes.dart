import 'package:TUPmob/app_screens/module_export.dart';

class AppRoutes {
  static const String homeScreen = '/home';
  static String initialRoute = '/';
  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => HomeScreen(),
      bindings: [
        HomeBinding(),
      ],
    ),
  ];
}
