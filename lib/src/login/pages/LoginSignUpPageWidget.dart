import 'package:flutter/material.dart';
import 'package:leitura1/src/login/provider/ProviderPageController.dart';
import 'package:leitura1/src/login/widgets/CircleButton.dart';
import 'package:leitura1/src/login/widgets/CustomTextField.dart';

class LoginSignUpPageWidget extends StatefulWidget {
  @override
  _LoginSignUpPageWidgetState createState() => _LoginSignUpPageWidgetState();
}

class _LoginSignUpPageWidgetState extends State<LoginSignUpPageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.9),
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.headset_mic,
            size: 50,
            color: Theme.of(context).accentColor,
          ),

          Container(height: 50,),

          CustomTextField(label: "EMAIL", hint: "jacobaraujo7@gmail.com",),
          Container(height: 25,),
          CustomTextField(label: "PASSWORD", hint: "***************",),
          Container(height: 25,),
          CustomTextField(label: "CONFIRM PASSWORD", hint: "***************",),

          Container(height: 25,), 
         
          GestureDetector(
            onTap: (){
              ProviderPageController.of(context).toPage(2);
            },
                      child: Container(
              width: double.infinity,
              child: Text("Already have an account?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).accentColor,
                  )),
            ),
          ),

          Container(height: 40,), 

          CicleButton(
            label: "SIGN UP",
          ),
        ],
      ),
    );
  }
}
