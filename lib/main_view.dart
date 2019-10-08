import 'package:bill_md_mobile/bill_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'constants.dart';

class MainView extends StatefulWidget {
  @override
  State createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int tabIndex = 0;

  final List<Widget> tabItems = [
    BillView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 80,
              left: 0,
              right: 0,
              bottom: 0,
              child: tabItems[tabIndex],
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(0, 3),
                      color: Color(0x1A000000),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 48,
                      child: Icon(
                        Icons.dehaze,
                        size: 28,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text(
                          'Your balance',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.normal),
                        ),
                        Text(
                          '\$0.00',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(width: 48),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
