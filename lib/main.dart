import 'package:flutter/material.dart';

import 'DealerSignUpFormScreen.dart';
import 'DriverSignUpFormScreen.dart';
import 'SignInScreen.dart';
import 'UserSelectionScreen.dart';

main()
{
  runApp(
      SignInScreen());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



