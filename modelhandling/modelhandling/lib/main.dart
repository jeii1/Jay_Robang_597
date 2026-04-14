import 'package:flutter/material.dart';
import 'package:modelhandling/model/student_model.dart';
import 'package:modelhandling/screen/homepage.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:modelhandling/screen/product_screeen.dart';
import 'package:modelhandling/screen/student_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: "https://uffodiqzcxdjwgylbmpp.supabase.co", 
  anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVmZm9kaXF6Y3hkandneWxibXBwIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4ODY5MzUsImV4cCI6MjA4NjQ2MjkzNX0.DtPj9W7eFE14aouZUCRiCd8ZDcaSkVXTFthdZ8rgNNQ",
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


