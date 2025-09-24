import 'package:flutter/material.dart';
import 'package:foodly_ui/screens/auth/forgot_password_screen.dart';
import 'package:foodly_ui/screens/auth/reset_email_sent_screen.dart';
import 'package:foodly_ui/screens/auth/sign_in_screen.dart';
import 'package:foodly_ui/screens/auth/sign_up_screen.dart';
import 'package:foodly_ui/screens/details/details_screen.dart';
import 'package:foodly_ui/screens/featured/featurred_screen.dart';
import 'package:foodly_ui/screens/filter/filter_screen.dart';
import 'package:foodly_ui/screens/findRestaurants/find_restaurants_screen.dart';
import 'package:foodly_ui/screens/home/home_screen.dart';
import 'package:foodly_ui/screens/orderDetails/order_details_screen.dart';
import 'package:foodly_ui/screens/phoneLogin/number_verify_screen.dart';
import 'package:foodly_ui/screens/phoneLogin/phone_login_screen.dart';
import 'package:foodly_ui/screens/profile/profile_screen.dart';
import 'package:foodly_ui/screens/search/search_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'constants.dart';
import 'screens/onboarding/onboarding_scrreen.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://xxhwhhtejumpwikfuuln.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inh4aHdoaHRlanVtcHdpa2Z1dWxuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTkxNjIsImV4cCI6MjA2Mjc5NTE2Mn0.KLgKqS6CMJFAq3QiF4sPU27b4KijtCaVgnxTC2cXgOA',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodly',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: Colors.white,
            minimumSize: const Size(double.infinity, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: bodyTextColor),
          bodySmall: TextStyle(color: bodyTextColor),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(defaultPadding),
          hintStyle: TextStyle(color: bodyTextColor),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const OnboardingScreen(),
        '/signIn': (context) => const SignInScreen(),
        '/signUp': (context) => const SignUpScreen(),
        '/forgotPassword': (context) => const ForgotPasswordScreen(),
        '/resetEmailSent': (context) => const ResetEmailSentScreen(),
        '/home': (context) => const HomeScreen(),
        '/details': (context) => const DetailsScreen(),
        '/featured': (context) => const FeaturedScreen(),
        '/filter': (context) => const FilterScreen(),
        '/findRestaurants': (context) => const FindRestaurantsScreen(),
        '/orderDetails': (context) => const OrderDetailsScreen(),
        '/phoneLogin': (context) => const PghoneLoginScreen(),
        '/numberVerify': (context) => const NumberVerifyScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/search': (context) => const SearchScreen(),
      },
    );
  }
}
