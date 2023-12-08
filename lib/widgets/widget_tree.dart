import 'package:wanderlustapp/auth.dart';
import 'package:wanderlustapp/screens/login_screen.dart';
import 'package:wanderlustapp/screens/login_register_screen.dart';
import 'package:flutter/material.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();

}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Auth().authStateChanges, 
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return LoginHomeScreen();
        } else {
          return const LoginScreen();
        }
      }); 
  }
}