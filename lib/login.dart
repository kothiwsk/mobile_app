import 'package:bill_md_mobile/constants.dart';
import 'package:flutter/material.dart';
import 'package:dart_notification_center/dart_notification_center.dart';

class LogInView extends StatefulWidget {
  @override
  createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  void tappedLogIn(_) async {
    DartNotificationCenter.post(
      channel: ObserverNotifications.appStateChanged,
      options: AppState.app,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: Text('Log in'),
            ),
            GestureDetector(
              onTapUp: tappedLogIn,
              child: TextField(
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x1976D2FF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
