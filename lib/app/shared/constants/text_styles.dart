import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';

class TextStyles {
  static const LABEL = TextStyle(
    color: AppColors.ON_LABEL,
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );

  static const FORM = TextStyle(
    fontSize: 20,
    color: AppColors.ON_FORM,
  );

  static const LOGIN_BUTTON = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.ON_PERFIL_DATA,
    fontSize: 20,
  );

  static const CHAT_MESSAGE_LABEL = TextStyle(
    fontSize: 16,
    color: AppColors.ON_LABEL,
  );

  static const HINT_LABEL = TextStyle(
    color: AppColors.ON_LABEL,
  );

  static const PERFIL_ITEM_TEXT = TextStyle(
    color: AppColors.ON_PERFIL_DATA,
    fontSize: 15,
  );

  static const PERFIL_NAME_TEXT = TextStyle(
    color: AppColors.ON_PERFIL_DATA,
    fontSize: 20,
  );
}
