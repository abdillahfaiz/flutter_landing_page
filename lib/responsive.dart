import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) =>
      MediaQuery.sizeOf(context).width < 904;

  static bool isTablet(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 904 &&
      MediaQuery.sizeOf(context).width < 1280;

  static bool isDekstop(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 1280;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    if (size.width >= 1280) {
      return desktop;
    } else if (size.width >= 904 && tablet != null) {
      return tablet ?? desktop;
    } else {
      return mobile;
    }
  }
}