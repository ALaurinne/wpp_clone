// APP BAR NORMAL
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "WhatsApp",
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
