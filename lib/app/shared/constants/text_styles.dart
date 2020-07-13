import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/shared/constants/appcolors.dart';

class TextStyles {
  static const LABEL = TextStyle(
    color: AppColors.GREY,
    fontWeight: FontWeight.w400,
    fontSize: 20,
  );

  static const FORM = TextStyle(
    fontSize: 20,
    color: AppColors.BLACK,
  );

  static const LOGIN_BUTTON = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColors.WHITE,
    fontSize: 20,
  );

  static const CHAT_MESSAGE = TextStyle(
    fontSize: 16,
    color: AppColors.BLACK,
  );

  static const HINT_LABEL = TextStyle(
    color: AppColors.GREY,
  );

  static const FORGOT_BUTTON = TextStyle(
    color: AppColors.GREY,
  );

  static const PERFIL_ITEM_TEXT = TextStyle(
    color: AppColors.WHITE,
    fontSize: 15,
  );

  static const PERFIL_NAME_TEXT = TextStyle(
    color: AppColors.WHITE,
    fontSize: 20,
  );

  static const APP_BAR_TITLE = TextStyle(
    fontWeight: FontWeight.bold,
  );

  static const APP_BAR_SUBTITLE = TextStyle(
    fontSize: 12,
  );

  static const LIST_NOT_READ = TextStyle(
    color: AppColors.SECONDARY_COLOR,
    fontWeight: FontWeight.bold,
  );

  static const LIST_READ = TextStyle(
    color: AppColors.GREY,
  );

  static const NUMBER_NOT_READ = TextStyle(
    color: AppColors.WHITE,
    fontWeight: FontWeight.bold,
  );
}
