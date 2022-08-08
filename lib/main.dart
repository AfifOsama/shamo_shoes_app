import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shamo_shoes/presentation/widgets/widgets_part.dart';
import 'package:shamo_shoes/utils/theme/color.dart';
import 'presentation/pages/pages_part.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails details) =>
      CustomErrorWidget(errorDetails: details.exception.toString());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme:
                ColorScheme.fromSwatch().copyWith(primary: AppColor.primary),
          ),
          routes: {
            '/': (context) => const SplashScreenPage(),
            '/sign-in': (context) => SignInPage(),
            '/sign-up': (context) => SignUpPage(),
            '/home': (context) => MainPage(),
          },
        );
      },
    );
  }
}
