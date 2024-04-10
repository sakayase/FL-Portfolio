import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:portfolio/pages/portfolio.dart';
import 'package:portfolio/theme.dart';

Logger logger = Logger(
  printer: PrettyPrinter(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simon\'s Website',
      theme: themeData,
      home: const MyHomePage(title: 'Simon\'s Website Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return const Portfolio();
  }
}
