import 'package:flutter/material.dart';
import 'package:gatekeeper/services/auth_service.dart' as authService;

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Sign In'),
              onPressed: () => authService.handleSignIn(),
            ),
            RaisedButton(
              child: Text('Sign Out'),
              onPressed: () => authService.handleSignOut(),
            )
            //Text(currentUser),
          ],
        ),
      ),
    );
  }
}