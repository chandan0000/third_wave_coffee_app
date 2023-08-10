import 'package:flutter/material.dart';
import 'package:third_wave_app/utils/font_size.widget.dart';
import 'package:third_wave_app/utils/text_styles.dart';
import 'colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final double width;
  final Function(String value) onChanged;

  const CustomTextField(
      {required this.hintText,
      required this.onChanged,
      this.width = 500,
      required this.textEditingController,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        onChanged: onChanged,
        style: KCustomTextStyle.kRegular(context, FontSize.kMedium),
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
            hintStyle: KCustomTextStyle.kRegular(context, FontSize.kMedium),
            hintText: hintText,
            filled: true,
            fillColor: KConstantColors.bgColorFaint),
        controller: textEditingController,
      ),
    );
  }
}
