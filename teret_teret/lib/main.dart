import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TeretTeretApp());
}

class TeretTeretApp extends StatelessWidget {
  const TeretTeretApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ተረት ተረት',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF00695C)),
        useMaterial3: true,
        textTheme: GoogleFonts.notoSansEthiopicTextTheme(),
      ),
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF00695C),
          brightness: Brightness.dark,
        ),
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('am', 'ET'), Locale('en')],
      locale: const Locale('am', 'ET'),
      home: const HomeScreen(),
    );
  }
}
