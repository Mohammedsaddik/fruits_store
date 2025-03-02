import 'package:flutter/material.dart';
import 'package:fruits_store/Core/utils/app_colors.dart';
import 'package:fruits_store/Core/utils/app_text_styles.dart';
import 'package:fruits_store/Features/Auth/presentation/views/widgets/custom_check_box.dart';

class TermesAndConditionsWidget extends StatefulWidget {
  const TermesAndConditionsWidget({super.key, required this.onChecked});
  final ValueChanged<bool> onChecked;

  @override
  State<TermesAndConditionsWidget> createState() =>
      _TermesAndConditionsWidgetState();
}

class _TermesAndConditionsWidgetState extends State<TermesAndConditionsWidget> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChecked(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        const SizedBox(
          width: 16.0,
        ),
        Expanded(
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: 'الشروط والأحكام',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: 'الخاصة',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyles.semiBold13.copyWith(
                    color: const Color(0xFF949D9E),
                  ),
                ),
                TextSpan(
                  text: 'بنا',
                  style: TextStyles.semiBold13
                      .copyWith(color: AppColors.lightPrimaryColor),
                ),
              ],
            ),
            textAlign: TextAlign.right,
          ),
        )
      ],
    );
  }
}
