import 'dart:ffi';

import 'package:flutter/material.dart';


class TimeOptionButton extends StatelessWidget {
  const TimeOptionButton({super.key, required this.label, required this.isSelected, required this.onTap});

  final String label;
  final Bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8)
        ),
      ),
    );
  }
}