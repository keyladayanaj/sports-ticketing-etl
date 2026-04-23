import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'ticket_form_screen.dart';

void main() {
  runApp(const IngressosApp());
}

class IngressosApp extends StatelessWidget {
  const IngressosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const TicketFormScreen(),
    );
  }
}