import 'package:flutter/material.dart';
import 'package:modelhandling/model/student_model.dart';
import 'package:modelhandling/screen/chat_screen.dart';
import 'package:modelhandling/screen/homepage.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:modelhandling/screen/product_screeen.dart';
import 'package:modelhandling/screen/student_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: "https://ftajoihtluqxavlpbvsz.supabase.co", 
  anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZ0YWpvaWh0bHVxeGF2bHBidnN6Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzE4Nzc1NTYsImV4cCI6MjA4NzQ1MzU1Nn0.JBRZse7TURt2CC0gZo4Zs5-ZFlVPzvfmaFWveyslX4g",
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
      home: ChatPage(username: 'username',),
      debugShowCheckedModeBanner: false,
    );
  }
}


