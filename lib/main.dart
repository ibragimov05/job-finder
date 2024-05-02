import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:job_finder/screens/profile_page.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 815),
      builder: (context, child) {
        return const MaterialApp(
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          home: ProfilePage(),
        );
      },
    );
  }
}
