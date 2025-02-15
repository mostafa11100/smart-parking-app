import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:parking/app/routs/app_routs.dart';
import 'package:parking/core/constants/colorapp.dart';
import 'package:parking/core/constants/images.dart';
import 'package:parking/core/utils/label_feild_custom.dart';
import 'package:parking/core/utils/widgets_gineral/custom_buttom.dart';
import 'package:parking/core/utils/widgets_gineral/dialogs.dart';
import 'package:parking/features/auth/signin/data/model/signin_model.dart';
import 'package:parking/features/auth/signin/data/repo_imp/signin_emailandpass_imp.dart';
import 'package:parking/features/auth/signin/presintation/cubit/cubit/signincubit_cubit.dart';

// ignore: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  TextEditingController emailcontroler = TextEditingController();

  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignincubitCubit(Signinemailandpass()),
      child: Builder(builder: (context) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23.0.w, vertical: 20.h),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 10.h,
                  // ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Image.asset(
                      Imagesurl.welcome,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 13.h,
                  ),
                  Text(
                    "Welcome Back!",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Please Sign in Your Acount",
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  LabelFeildCustom("Email", "please enter your email",
                      Icons.email_outlined, emailcontroler),
                  SizedBox(
                    height: 15.h,
                  ),
                  LabelFeildCustom("Password", "please enter your passowrd",
                      Icons.lock_outline, password),
                  SizedBox(
                    height: 13.h,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Forget Password?",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .copyWith(fontWeight: FontWeight.w600),
                        )),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  BlocListener<SignincubitCubit, SignincubitState>(
                      listener: (context, state) {
                        if (state is SignincubitLoading) {
                          DialogsWidgets.loadingdialog(context);
                        }
                        if (state is SignincubitSuccess) {
                          GoRouter.of(context).push(AppRouts.homescreen);
                        } else if (state is SignincubiFail) {
                          context.pop();
                          DialogsWidgets.infodialo(
                            context,
                            title: "error",
                            type: DialogType.error,
                            desc: state.error,
                            on1: () {},
                          );
                        }
                      },
                      child: SizedBox(
                          height: 48.h,
                          width: MediaQuery.of(context).size.width,
                          child: CustomButtom(
                              context: context,
                              ontap: () {
                                BlocProvider.of<SignincubitCubit>(context)
                                    .sinin(
                                        userdata: SigninModel(
                                            email: emailcontroler.text,
                                            password: password.text));
                              },
                              text: "Sign in"))),
                  SizedBox(
                    height: 15.h,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  // children: [
                  //   CuttingDivder(11),
                  //   Padding(
                  //     padding: EdgeInsets.all(8.0.w),
                  //     child: Text("Sign in With",
                  //         style: Theme.of(context)
                  //             .textTheme
                  //             .headlineMedium!
                  //             .copyWith(fontWeight: FontWeight.w600)),
                  //   ),
                  //CuttingDivder(11),
                  SizedBox(
                    height: 30.h,
                  ),
                  signupoption(context)
                  //   ],
                  // )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

Widget signupoption(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Dont Have an acount",
        style: Theme.of(context).textTheme.labelLarge,
      ),
      const SizedBox(
        width: 2,
      ),
      Text("SignUp",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colorapp.primarycolor, fontWeight: FontWeight.w600)),
    ],
  );
}
