import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';
import 'package:thrive/screens/auth/password/enter_password.dart';
import 'package:thrive/screens/auth/signIn/sign_in.dart';
import 'package:thrive/screens/auth/signUp/sign_up.dart';
import 'package:thrive/screens/error/error.dart';
import 'package:thrive/screens/home/home.dart';
import 'package:thrive/screens/loading/loading.dart';
import 'package:thrive/screens/mainScreen/main_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return const ErrorPage();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                centerTitle: true,
                backgroundColor: bgColor,
                elevation: 0,
                titleTextStyle: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              backgroundColor: bgColor,
              primarySwatch: Colors.blue,
            ),
            routes: {
              '/home': (context) => const Home(),
              '/signup': (context) => const SignUp(),
              '/signin': (context) => const SignIn(),
              '/enterpassword': (context) => const SelectPassword(),
            },
            home: StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return const MainScreen();
                } else {
                  return const SignIn();
                }
              },
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return const LoadingPage();
      },
    );
  }
}
