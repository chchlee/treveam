import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension StringExtension on String {
  String numberFormat() {
    final formatter = NumberFormat("#,###");
    return formatter.format(int.parse(this));
  }
}