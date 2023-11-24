import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mock_test/view/verification_page/home_page.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey:"AIzaSyDfXK_Rant1A6YQmlzHaTSx_ZyJjpJVI9E",
        appId:"mock-test-1ff0f",
        messagingSenderId: "",
        projectId: "mock-test-1ff0f",
        storageBucket: "mock-test-1ff0f.appspot.com"
      )
  );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Verification_page(),
    );
  }
}
