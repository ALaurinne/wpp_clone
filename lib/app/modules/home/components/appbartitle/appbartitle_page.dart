// APP BAR NORMAL
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/shared/constants/text_styles.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "WhatsApp",
      style: TextStyles.APP_BAR_TITLE,
    );
  }
}
