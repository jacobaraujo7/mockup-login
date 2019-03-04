import 'package:flutter/material.dart';
import 'package:leitura1/src/login/pages/LoginPageWidget.dart';
import 'package:leitura1/src/login/pages/LoginSignInPageWidget.dart';
import 'package:leitura1/src/login/pages/LoginSignUpPageWidget.dart';
import 'package:leitura1/src/login/provider/ProviderPageController.dart';

class LoginWidget extends StatefulWidget {
  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  PageController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = PageController(initialPage: 1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          //image
          Image.asset(
            "assets/imgs/monte.jpg",
            fit: BoxFit.cover,
          ),
          //pageview

          ProviderPageController(
            controller: _controller,
            child: PageView(
              controller: _controller,
              children: <Widget>[
                LoginSignUpPageWidget(),
                LoginPageWidget(),
                LoginSignInPageWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
