import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../style/app_colors.dart';

class CustomTextFormFieldSearch extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? type;
  final String? hint;
  final Function(String)? onSubmit;
  final Function(String)? onChange;
  final FormFieldValidator? validate;
  final String? labelText;
  final Function()? onTap;
  final Widget? prefixIcon;
  final IconData? suffixIcon;
  final bool isPassword;
  final Function? suffixPressed;
  final Function(String?)? onSaved;
  final double? height;
  final double? width;
  final double? radius;
  final Color? borderColor;
  final Color? fillColor;
  final bool? filled;
  final EdgeInsetsGeometry? contentPadding;

  const CustomTextFormFieldSearch({
    Key? key,
    this.controller,
    required this.type,
    required this.hint,
    this.onSubmit,
    this.onChange,
    required this.validate,
    this.labelText,
    this.prefixIcon,
    this.onTap,
    this.suffixIcon,
    this.isPassword = false,
    this.suffixPressed,
    this.onSaved,
    this.height,
    this.width,
    this.radius,
    this.borderColor,
    this.fillColor,
    this.filled,
    this.contentPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? 291,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.start,
        controller: controller,
        keyboardType: type,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        onTap: onTap,
        onSaved: onSaved,
        validator: validate,
        obscureText: isPassword,
        obscuringCharacter: '*',
        // textDirection: lang == 'ar' ? TextDirection.rtl : TextDirection.ltr,
        style: TextStyle(
          fontSize: 18.sp,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          filled: filled,
          border: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: AppColors.myGrey),
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 18.r)),
          ),
          fillColor: fillColor ?? Colors.white,
          contentPadding: contentPadding ?? EdgeInsets.all(10.r),
          // hintTextDirection:
          // lang == 'ar' ? TextDirection.rtl : TextDirection.ltr,
          labelText: labelText,
          labelStyle: TextStyle(
            fontSize: 18.sp,
          ),
          hintText: hint,
          // hintStyle: TextStyle(
          //   color: AppColors.myGery,
          //   fontSize: 15.sp,
          // ),
          suffixIcon: IconButton(
            icon: Icon(suffixIcon),
            onPressed: () {
              if (suffixIcon != null) {
                suffixPressed!();
              }
            },
            // color: Colors.white,
          ),
          prefixIcon: prefixIcon,
          alignLabelWithHint: true,
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: Colors.red),
            borderRadius: BorderRadius.all(Radius.circular(radius ?? 18.r)),
          ),
        ),
      ),
    );
  }
}
