import 'package:flutter/material.dart';
import 'package:settings_app/preferences_keys.dart';
import 'package:settings_app/settings_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  bool darkMode = prefs.getBool(PreferencesKeys.darkMode) ?? false;

  runApp(MainApp(isDarkMode: darkMode));
}

class MainApp extends StatelessWidget {
  final bool isDarkMode;

  const MainApp({super.key, required this.isDarkMode});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Configuración"),
          ),
          body: SettingsScreen(),
        ));
  }
}
