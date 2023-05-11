import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:labinfo/screen/signin_screen.dart';
import 'firebase_options.dart';
import 'package:dio/dio.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/telegram.dart';
import 'dart:io';
import 'dart:async';

final dio = Dio();
void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  final fcmToken = await FirebaseMessaging.instance.getToken();
  print(fcmToken);
  final response = await dio.get('https://dart.dev');
  print(response);

  runApp(const MyApp());
  await Future.delayed(const Duration(seconds: 5));
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignInScreen(),
    );
  }
}
