import 'package:flutter/material.dart';
import 'AppLogo.dart';

class LoginScreen extends StatelessWidget {
  //const LoginScreen({Key? key}) : super(key: key);
  final mainBlue = const Color(0xff122dbc);
  final mainBGColor = const Color(0xffc4c4c4).withOpacity(1);
  final textFieldBGColor = const Color(0xffc4c4c4).withOpacity(0.84);
  final textInputColor = Colors.black87;
  final orangeTintColor = Colors.orange[400];

  //SizeBox widget
  final SizedBox sizedBox = const SizedBox(height: 10);

  //Building "login" text
  Widget buildLoginText() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
      child: const Text(
        "Login",
        style: TextStyle(
          fontSize: 36,
          fontFamily: 'Righteous',
        ),
      ),
    );
  }

  // creating a username widget
  Widget buildUsername() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(19, 0, 19, 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Username",
            style: TextStyle(
              fontFamily: 'Righteous',
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.start,
          ),
          sizedBox,
          Container(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
            decoration: BoxDecoration(
                color: textFieldBGColor,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ]),
            height: 74,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.name,
              style: TextStyle(color: textInputColor, fontSize: 30),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                prefixIcon: Icon(
                  Icons.person,
                  color: mainBlue,
                ),
                hintText: "Username",
                hintStyle: TextStyle(color: Colors.black38),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Bulding a password input widget
  Widget buildPassword() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(19, 0, 19, 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Password",
            style: TextStyle(
              fontFamily: 'Righteous',
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.start,
          ),
          sizedBox,
          Container(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
            decoration: BoxDecoration(
                color: textFieldBGColor,
                border: Border.all(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black87,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ]),
            height: 74,
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              keyboardType: TextInputType.name,
              style: TextStyle(color: textInputColor, fontSize: 30),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                prefixIcon: Icon(
                  Icons.lock,
                  color: mainBlue,
                ),
                hintText: "Password",
                hintStyle: const TextStyle(color: Colors.black38),
              ),
            ),
          ),
          buildForgotPassword(),
        ],
      ),
    );
  }

  //Building the login button
  Widget buildLoginButton() {
    final ButtonStyle myButtonStyle = ElevatedButton.styleFrom(
      onPrimary: mainBlue,
      primary: orangeTintColor,
      minimumSize: const Size(120, 45),
      // padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      elevation: 2,
    );

    return ElevatedButton(
      style: myButtonStyle,
      onPressed: () => {print("I have been presses")},
      child: const Text(
        "Login",
        style: TextStyle(
          fontFamily: 'Righteous',
          fontSize: 20,
        ),
      ),
    );
  }

  //Building a forgot password widget
  Widget buildForgotPassword() {
    final ButtonStyle myTextButtonStyle = TextButton.styleFrom(
      primary: Colors.black,
      minimumSize: const Size(120, 30),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(1, 0, 5, 1),
            child: TextButton(
                style: myTextButtonStyle,
                onPressed: () {
                  print("I forgot password");
                },
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(color: Color(0xff122dbc), fontSize: 20),
                )))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBGColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Center(
          child: Column(
            children: [
              AppLogo("assets/images/logo2.png"),
              buildLoginText(),
              buildUsername(),
              buildPassword(),
              //buildForgotPassword(),
              sizedBox,
              buildLoginButton(),
              sizedBox,
              sizedBox,

              /*Container(
                //color: Colors.white,
                child: Text("Stranger"),
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
