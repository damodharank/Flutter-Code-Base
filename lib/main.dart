import 'package:TUPmob/app_routes/app_routes.dart';
import 'package:TUPmob/config/theme/app_theme_data.dart';
import 'package:TUPmob/config/translations/localization_service.dart';
import 'package:TUPmob/utils/awesome_notifications_helper.dart';
import 'package:TUPmob/utils/initial_bindings.dart';
import 'package:TUPmob/utils/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final navigatorKey = GlobalKey<NavigatorState>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.init();
  await AwesomeNotifyHelper.init();
  //  runApp(const MyApp());
  ThemeMode savedThemeMode = SharedPref.getAppTheme();
  Locale storedLanguage = SharedPref.getCurrentLocal();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]).then((value) async {
    await dotenv.load(fileName: ".env");

    runApp(ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      rebuildFactor: (old, data) => true,
      builder: (context, child) => MyApp(savedThemeMode, storedLanguage),
    ));
  });
}

class MyApp extends StatelessWidget {
  final ThemeMode savedThemeMode;
  final Locale selectedLanguage;
  const MyApp(this.savedThemeMode, this.selectedLanguage, {super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Set the app's locale based on the selectedLanguage

    return GetMaterialApp(
      title: 'Tup Mobile',
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      theme: AppThemeData.lightThemeData.copyWith(
        platform: defaultTargetPlatform,
      ),
      darkTheme: AppThemeData.darkThemeData.copyWith(
        platform: defaultTargetPlatform,
      ),
      translations: LocalizationService.getInstance(),
      locale: selectedLanguage,
      fallbackLocale: const Locale('en', 'US'),
      initialBinding: InitialBindings(),
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.pages,
    );
  }
}
