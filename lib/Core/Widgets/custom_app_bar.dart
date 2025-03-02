import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_store/Core/utils/app_images.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';

AppBar BuildAppBar(context,
    {required String title,
    bool showbackBottom = true,
    bool showNotificationItem = true}) {
  return AppBar(
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: const ShapeDecoration(
            color: Color(0xFFEEF8ED),
            shape: OvalBorder(),
          ),
          child: Visibility(
            visible: showNotificationItem,
            child: SvgPicture.asset(
              Assets.imagesNotification,
            ),
          ),
        ),
      )
    ],
    centerTitle: true,
    title: Text(
      title,
      style: TextStyles.bold19,
    ),
    leading: Visibility(
      visible: showbackBottom,
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios_new),
      ),
    ),
  );
}
