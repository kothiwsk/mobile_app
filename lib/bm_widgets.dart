import 'package:bill_md_mobile/constants.dart';
import 'package:flutter/material.dart';

class BMNavigatorView extends StatelessWidget {
  final Widget child;
  final String title;

  BMNavigatorView({@required this.child, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            bottom: 0,
            child: child,
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 80,
            child: SafeArea(
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: UIAssets.boxShadow,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTapUp: (_) => Navigator.pop(context),
                      behavior: HitTestBehavior.opaque,
                      child: SizedBox(
                        width: 36,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: BMColors.dark_grey,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(width: 36),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
