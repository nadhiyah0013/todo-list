// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:todo_list/utils/utils.dart';

class DisplayWhiteText extends StatelessWidget {
  const DisplayWhiteText({
    Key? key,
    required this.text,
    this.fontSize,
    this.fontWeight,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.headlineSmall?.copyWith(
        color: context.colorScheme.surface,
        fontWeight: fontWeight ?? FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}
