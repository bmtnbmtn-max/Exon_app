import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/institute_list_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://innbcavuxbnzvztlehoy.supabase.co',
    anonKey: 'sb_publishable_5C1MC8lQw2h7ReG6XJPx3Q_MeJ18a0j',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exon Admin',

      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepOrangeAccent,
          brightness: Brightness.light,
        ),

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,
          centerTitle: true,
          elevation: 2,
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.deepOrangeAccent,
          foregroundColor: Colors.white,
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Colors.deepOrangeAccent, // බටන් එකේ බැක්ග්‍රවුන්ඩ් පාට
            foregroundColor: Colors.white, // අකුරු වල පාට
            minimumSize: const Size(double.infinity, 50), // බටන් එකේ ප්‍රමාණය
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // දාර වටකුරු කිරීම
            ),
          ),
        ),
        snackBarTheme: SnackBarThemeData(
          backgroundColor: Colors.black,
          contentTextStyle: const TextStyle(color: Colors.red),
          behavior:
              SnackBarBehavior.floating, // ස්නැක්බාර් එක පාවෙන පෙනුමක් ලබා දෙයි
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // දාර වටකුරු කිරීම
          ),
        ),
      ),

      home: InstituteListScreen(),
    );
  }
}
