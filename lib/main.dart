
import 'package:flutter/material.dart';
import 'package:musicly_player/screens/homescreen/provider/like_provider.dart';
import 'package:musicly_player/screens/homescreen/provider/share_provider.dart';
import 'package:musicly_player/screens/splashscreen/view/splash_screen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ShareProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LikeProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}
