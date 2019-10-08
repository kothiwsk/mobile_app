import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:bill_md_mobile/constants.dart';

class BillView extends StatefulWidget {
  @override
  State createState() => _BillViewState();
}

class _BillViewState extends State<BillView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 24),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF90E2CD),
                Color(0xFF7CD3D0),
              ],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Icon(
                Icons.account_balance,
                color: Colors.white,
                size: 48,
              ),
              Text(
                'YOUR BILLS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(48, 12, 48, 0),
                child: Text(
                  'Did you know this random fact about medical bills?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 48, vertical: 16),
          child: Text(
            'It seems you don\'t have any bills,\nadd one?',
            textAlign: TextAlign.center,
          ),
        ),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: BMColors.alert_orange),
            child: Icon(
              Icons.add,
              size: 32,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
