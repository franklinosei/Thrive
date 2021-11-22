import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thrive/screens/error/error.dart';
import 'package:thrive/screens/home/home.dart';
import 'package:thrive/screens/loading/loading.dart';

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
          return const Home();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return const LoadingPage();
      },
    );
  }
}
