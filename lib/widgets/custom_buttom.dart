import 'package:bfs_app/style.dart';
import 'package:flutter/material.dart';




class CustomButtonText extends StatelessWidget {
  const CustomButtonText({this.text, this.onTap, super.key, this.color, this.borderRadius, this.textStyle, this.blocButton = true});

  final bool? blocButton;
  final String? text;
  final void Function()? onTap;
  final Color? color;
  final BorderRadius? borderRadius;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: borderRadius ?? BRadius.r16,
      color: color ?? BC.blue.withOpacity(blocButton == true ? 1 : 0.5),
      child: InkWell(
          borderRadius: borderRadius ?? BRadius.r16,
          onTap: blocButton == true ? onTap : null,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(child: Text(text ?? 'Next', style: textStyle ?? BS.sb18.apply(color: BC.white))),
          )),
    );
  }
}
