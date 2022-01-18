import 'package:flutter/material.dart';

InputDecoration inputDecoration = InputDecoration(
  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
  enabledBorder: OutlineInputBorder(
    borderSide: const BorderSide(color: Color(0xFFebebeb), width: 2),
    borderRadius: BorderRadius.circular(35),
  ),
  border: OutlineInputBorder(
    borderSide: const BorderSide(color: Color(0xFFebebeb)),
    borderRadius: BorderRadius.circular(35),
  ),
  filled: true,
  fillColor: const Color(0xFFebebeb),
);