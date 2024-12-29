import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'themeprovider.dart'; // Import the theme provider file
import 'homepage.dart'; // Import the home page

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Theme Toggle Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: themeProvider.themeMode,
      home: HomePage(),
    );
  }
}
