import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:kartrider_rns/src/routes/app_pages.dart';
import 'package:kartrider_rns/src/themes/app_theme.dart';
import 'package:kartrider_rns/src/themes/app_theme_notifier.dart';
import 'package:kartrider_rns/src/themes/fx_app_theme_notifier.dart';

import 'package:provider/provider.dart';

Future<void> main() async {
  await initServices();
}

Future<void> initServices() async {
  print('기본 서비스 시작 중 ...');
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(ChangeNotifierProvider<AppThemeNotifier>(
      create: (context) => AppThemeNotifier(),
      child: ChangeNotifierProvider<FxAppThemeNotifier>(
        create: (context) => FxAppThemeNotifier(),
        child: MyApp(),
      ),
    ));
  });
  print('기본 서비스 로딩 완료!');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppThemeNotifier>(
        builder: (BuildContext context, AppThemeNotifier value, Widget? child) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false, //Debug 배너가 사라지게 함.
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        getPages: AppPages.routes,
        initialRoute: AppPages.INITIAL,
      );
    });
  }
}
