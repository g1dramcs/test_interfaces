import 'package:flutter/material.dart';
import 'package:test_screen/preferences/app_colors.dart';
import 'package:test_screen/widgets/screen.dart';
import 'package:test_screen/widgets/screen1.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MainScreenWidget(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: AppColorDark.appBarDark),
          scaffoldBackgroundColor: AppColorDark.mainAppDark,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
          textTheme:
              const TextTheme(subtitle2: const TextStyle(color: Colors.white))),
      routes: {
        '/': (context) => MainScreenWidget(),
      },
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text("Ошбика перехода меню"),
            ),
          );
        });
      },
    );
  }
}
