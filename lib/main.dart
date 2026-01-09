import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'ui/view/login/login_view.dart';

void main() => runApp(
  DevicePreview(
    builder: (context) => MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      //home: OnboardingView(),
      //home: LoginView(),
      //home:RatingTeam(),
      home: LoginView(),
    );
  }
}
