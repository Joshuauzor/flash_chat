import 'package:flutter/material.dart';
// import 'package:flash_chat/screens/login_screen.dart';
// import 'package:flash_chat/screens/registration_screen.dart';

class RoundButton extends StatelessWidget {
  // const RoundButton({
  //   Key key,
  // }) : super(key: key);

  RoundButton({@required this.colour, this.label, @required this.action});
  final Color colour;
  final String label;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        // color: Colors.lightBlueAccent,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: action,
          // () {
          //   Navigator.pushNamed(context, LoginScreen.id);
          // },
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            // 'Log In',
            label,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
