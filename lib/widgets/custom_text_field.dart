import 'package:flutter/material.dart';
import 'package:notely/core/theme/app_colors.dart';
import 'package:notely/core/theme/app_text_styles.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final String hinText;
  final TextEditingController controller;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.label,
    required this.hinText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;
  late bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {});
    });
    _obscureText = widget.obscureText;
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  OutlineInputBorder _border(Color color) => OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(color: color, width: 2),
  );

  @override
  Widget build(BuildContext context) {
    final isFocused = _focusNode.hasFocus;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: AppTextStyles.textVerySmall.copyWith(color: AppColors.text),
        ),

        SizedBox(height: 8),

        TextField(
          controller: widget.controller,
          focusNode: _focusNode,
          style: AppTextStyles.textMedium.copyWith(color: AppColors.text),
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 20,
            ),
            hintText: widget.hinText,
            filled: true,
            fillColor: AppColors.white,
            enabledBorder: _border(Colors.transparent),
            focusedBorder: _border(AppColors.detail),
          ),
        ),
      ],
    );
  }
}
