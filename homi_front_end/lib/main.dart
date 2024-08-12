import 'package:flutter/material.dart';
import 'package:homi_front_end/pages/landing_screen.dart';
import 'package:homi_front_end/pages/login.dart';
import 'package:homi_front_end/pages/sign_up.dart';
import 'package:homi_front_end/pages/user/category_page.dart';
import 'package:homi_front_end/pages/user/chat_screen_details.dart';
import 'package:homi_front_end/pages/user/home_page.dart';
import 'package:homi_front_end/pages/user/home_screen.dart';
import 'package:homi_front_end/pages/user/specific_house_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomiGram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 68, 183, 58)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingScreen(),
        '/signup': (context) => const SignUp(),
        '/login': (context) => const Login(),
        '/homepage': (context) => const HomePage(),
        '/homescreen': (context) => const MyHomeScreen(),
        '/specificHouse': (context) => const SpecificHousePage(),
        '/categories': (context) => const CategoryPage(),
        '/chatScreen': (context) => const ChatScreen(),
        // '/': (context) => const WelcomePage(),
        // '/': (context) => const WelcomePage(),
        // '/': (context) => const WelcomePage(),
      },
    );
  }
}
