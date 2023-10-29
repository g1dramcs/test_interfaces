import 'package:flutter/material.dart';
import 'package:test_screen/widgets/screen.dart';
import 'package:test_screen/widgets/screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.black87),
          textTheme:
              const TextTheme(subtitle1: const TextStyle(color: Colors.white))),
      routes: {
        '/auth': (context) => HomeScreen(),
        '/next': (context) => MainScreen()
      },
      initialRoute: '/auth',
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(builder: (context) {
          return Scaffold(
            body: Center(
              child: Text("ds"),
            ),
          );
        });
      },
    );
  }
}
