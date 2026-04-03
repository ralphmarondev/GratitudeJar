import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gratitude_jar/screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyAcCoNgI16lU_by56qbRKLoIhI-DVYkn44',
        authDomain: 'gratitude-jar-2026.firebaseapp.com',
        projectId: 'gratitude-jar-2026',
        storageBucket: 'gratitude-jar-2026.appspot.com',
        messagingSenderId: '723617078421',
        appId: '1:723617078421:web:60bd19b6409d00636e4f9c',
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const GratitudeJarApp());
}

class GratitudeJarApp extends StatelessWidget {
  const GratitudeJarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gratitude Jar',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}
