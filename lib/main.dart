import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:r_user/providers/api_provider.dart';
import 'package:r_user/screens/api_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(child: const HomePage(),create: (context) => HomePageProvider()),
    );
  }
}
