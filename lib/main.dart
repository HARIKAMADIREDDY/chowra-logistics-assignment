import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'presentation/pages/home_page.dart';

void main() {
  runApp(const ChowraLogisticsApp());
}

class ChowraLogisticsApp extends StatelessWidget {
  const ChowraLogisticsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chowra Logistics',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomePage(),
    );
  }
}
