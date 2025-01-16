import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:parking/app/routs/app_routs.dart';
import 'package:parking/core/constants/colorapp.dart';
import 'package:parking/core/constants/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      GoRouter.of(context).pushReplacement(AppRouts.onpording);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colorapp.primary2color,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          // height: 200.h,
          child: Image.asset(
            Imagesurl.splash,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
