import 'package:auth_app/screens/welcome.dart';
import 'package:auth_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Set the system UI overlay style
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        // statusBarColor: Color(0xFF191720),
        statusBarColor: Color.fromARGB(255, 255, 255, 255),
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Color(0xFF191720),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          builder: (context, widget) {
            return MediaQuery(
              // Setting font to not change with system font size
              data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
              child: widget!,
            );
          },
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: ThemeMode.system,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kdarkcolor,
            floatingActionButtonTheme: FloatingActionButtonThemeData(
              backgroundColor: Colors.teal,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              selectedItemColor: Color(0xFF1A2634),
            ),
            dialogBackgroundColor: Colors.teal,
          ),
          home: Welcome(),
        );
      },
    );
  }
}
