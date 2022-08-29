import 'package:flutter/material.dart';

InputDecoration textFieldStyle(String label) {
  final textFieldStyle = InputDecoration(
    hintText: label,
    filled: true,
    fillColor: Colors.white.withAlpha(200),
    border: const OutlineInputBorder(),
    contentPadding: const EdgeInsets.symmetric(horizontal: 13, vertical: 13),
    isCollapsed: true,
  );
  return textFieldStyle;
}
