import 'package:go_router/go_router.dart';
import 'package:parking/features/app_screens/home/presintation/view/home_screen.dart';
import 'package:parking/features/auth/signin/presintation/view/sign_in_screen.dart';
import 'package:parking/features/onbording/onpording_.dart';
import 'package:parking/features/splash/splash_screen.dart';

class AppRouts {
  static String splash = "/s";

  static String onpording = "/onpording";

  static String signin = "/SignInScreen";
  static String homescreen = "/";

  static GoRouter routs = GoRouter(routes: [
    GoRoute(
        path: splash,
        builder: (context, s) {
          return const SplashScreen();
        }),
    GoRoute(
        path: homescreen,
        builder: (context, s) {
          return const HomeScreen();
        }),
    GoRoute(
        path: signin,
        builder: (context, s) {
          return const SignInScreen();
        }),
    GoRoute(
        path: onpording,
        builder: (context, s) {
          return const OnpordingHome();
        })
  ]);
}
