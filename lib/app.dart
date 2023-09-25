import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mental_health_fitness_ui/theme/app_style.dart';
import 'package:mental_health_fitness_ui/theme/app_theme.dart';
import 'package:mental_health_fitness_ui/views/home/home_screen.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: $styles.colors.blue,
        statusBarIconBrightness: Brightness.light,
        // statusBarBrightness: Brightness.light,
      ),
    );
    return Sizer(
      builder:
          (BuildContext context, Orientation orientation, DeviceType device) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.theme,
          darkTheme: AppTheme.darkTheme,
          home: const HomeScreen(),
        );
      },
    );
  }
}
