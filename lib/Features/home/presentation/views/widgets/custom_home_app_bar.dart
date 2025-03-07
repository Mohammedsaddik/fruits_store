import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_store/Core/healper_function/get_user.dart';
import 'package:fruits_store/Core/utils/app_images.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';
import 'package:fruits_store/Features/Auth/domain/entites/user_entites.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    UserEntity? user = getUser();
    return ListTile(
      trailing: Container(
        padding: const EdgeInsets.all(16),
        decoration: const ShapeDecoration(
          color: Color(0xFFEEF8ED),
          shape: OvalBorder(),
        ),
        child: SvgPicture.asset(
          Assets.imagesNotification,
        ),
      ),
      leading: Image.asset(
        Assets.imagesProfileImage,
      ),
      title: Text(
        'صباح الخير !..',
        textAlign: TextAlign.right,
        style: TextStyles.regular16.copyWith(color: const Color(0xFF949D9E)),
      ),
      subtitle: Text(
        (user?.name ?? "Guest"),
        textAlign: TextAlign.right,
        style: TextStyles.bold16,
      ),
    );
  }
}
