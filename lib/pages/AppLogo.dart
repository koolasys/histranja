import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final String _path;

  AppLogo(this._path);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(50, 80, 50, 0),
      decoration: BoxDecoration(color: Colors.transparent),
      child: Image.asset(
        _path,
        fit: BoxFit.contain,
      ),
    );
  }
}
