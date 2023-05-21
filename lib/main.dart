import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_apps/screen/start_screen.dart';
import 'package:weather_apps/service/weather_provider.dart';

import 'screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProviderWeather(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProviderTextController(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: Colors.yellow,
        ),
        home: StartScreen(),
      ),
    );
  }
}
