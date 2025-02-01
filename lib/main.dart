import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/app/routs/app_routs.dart';
import 'package:parking/app/theme/darktheme.dart';
import 'package:parking/app/theme/lighttheme.dart';
import 'package:parking/generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(MediaQuery.of(context).size.width,
            MediaQuery.of(context).size.height),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, widget) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            routerConfig: AppRouts.routs,
            locale: const Locale('en'),
            title: 'Flutter Demo',
            theme: Lighttheme.LightTheme,
            darkTheme: DarkTheme.darktheme,
            themeMode: ThemeMode.light,
            //home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        });
  }
}
