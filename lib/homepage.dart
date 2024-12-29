import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'themeprovider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Toggle Demo'),
        actions: [
          Switch(
            value: themeProvider.isDarkTheme,
            onChanged: (value) {
              themeProvider.toggleTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Toggle the theme using the SWITCH !!',
          style: TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
