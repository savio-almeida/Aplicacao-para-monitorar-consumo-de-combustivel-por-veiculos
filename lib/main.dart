import 'package:auto_control_panel/providers/abast_provider.dart';
import 'package:auto_control_panel/routes.dart';
import 'package:auto_control_panel/screens/about_screen.dart';
import 'package:auto_control_panel/screens/details_screen.dart';
import 'package:auto_control_panel/screens/form_screen.dart';
import 'package:auto_control_panel/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/auth_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    // AuthProvider authProvider = AuthProvider();
    // authProvider.signUp('thi@go.com.br', '654321');

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AbastProvider>(create:(context)
        =>AbastProvider()),
        ChangeNotifierProvider<AuthProvider>(create:(context)
        =>AuthProvider()),
      ],
      child: MaterialApp(
        title: 'Auto Control Panel',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent)),
            home: Center(
              child: Text(calculator.addOne(10).toString()),
              ),
        routes: { // Registrando as possíveis rotas
          Routes.SIGNUP: (context) => SignupScreen(),
          Routes.HOME: (context) => const HomeScreen(),
          'about_screen': (context) => const AboutScreen(),
          'details_screen': (context) => const DetailsScreen(),
          Routes.FORM: (context) => const FormScreen(),
        },
      ),
    );
  }
}

