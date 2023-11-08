import 'package:flutter/material.dart';
import 'package:social_sphere/common/utils/layout.dart';

extension BuildContextLayoutExtensions on BuildContext {
  Layout get layout => Layout.of(this);
}