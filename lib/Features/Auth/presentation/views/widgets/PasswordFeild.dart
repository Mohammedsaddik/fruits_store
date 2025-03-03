import 'package:flutter/material.dart';
import 'package:fruits_store/Core/Widgets/custom_text_field%20copy.dart';

class PasswordFeild extends StatefulWidget {
  const PasswordFeild({
    super.key,
    required this.onSaved,
  });
  final void Function(String?)? onSaved;

  @override
  State<PasswordFeild> createState() => _PasswordFeildState();
}

class _PasswordFeildState extends State<PasswordFeild> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      hintText: "كلمة المرور",
      suffixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? const Icon(Icons.visibility_off)
            : const Icon(Icons.remove_red_eye),
      ),
      textInputType: TextInputType.text,
    );
  }
}
