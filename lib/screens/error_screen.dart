import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  static const String routeName = '/error-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(64.0),
          child: Image.asset('assets/images/free-icon-404-error.png'),
        ),
      ),
    );
  }
}
