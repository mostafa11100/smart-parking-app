import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:parking/app/routs/app_routs.dart';
import 'package:parking/features/onbording/onpording1.dart';
import 'package:parking/features/onbording/onpording2.dart';
import 'package:parking/features/onbording/onpording3.dart';
import 'package:parking/features/onbording/onpording_widgets/custom_next_buttom.dart';
import 'package:parking/features/onbording/onpording_widgets/pages_counter.dart';

class OnpordingHome extends StatefulWidget {
  const OnpordingHome({super.key});

  @override
  State<OnpordingHome> createState() => _OnpordingHomeState();
}

class _OnpordingHomeState extends State<OnpordingHome> {
  PageController? controler;
  double index = 0.0;
  @override
  void initState() {
    controler = PageController();
    controler!.addListener(() {
      setState(() {
        index = controler!.page ?? 0.0;
        print(controler!.page);
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controler!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              //  width: MediaQuery.of(context).size.width,

              child: PageView(
                controller: controler,
                children: [
                  onbording1(),
                  onbording2(),
                  onbording3(),
                ],
              ),
            ),
            PagesCounter(index),
            SizedBox(
              height: 30.h,
            ),
            AnimatedOpacity(
              opacity: index == 2 ? 1 : 0,
              duration: const Duration(
                milliseconds: 500,
              ),
              child: CustomNextButtom(context, () {
                GoRouter.of(context).pushReplacement(AppRouts.signin);
              }),
            ),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
    );
  }
}
