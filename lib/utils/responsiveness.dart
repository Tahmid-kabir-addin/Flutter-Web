import 'package:flutter/material.dart';

const int largeScreenSize = 1025;
const int mediumScreenSize = 768;
const int smallScreenSize = 480;
const int customScreenSize = 1024;

class ResponsiveWidget extends StatelessWidget {
  final Widget LargeScreen;
  final Widget MediumScreen;
  final Widget SmallScreen;
  final Widget CustomScreen;


  ResponsiveWidget(
      this.LargeScreen, this.MediumScreen, this.SmallScreen, this.CustomScreen);

  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < smallScreenSize;
  }

  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= smallScreenSize &&
        MediaQuery.of(context).size.width < mediumScreenSize;
  }

  static bool isCustomScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= mediumScreenSize &&
        MediaQuery.of(context).size.width < largeScreenSize;
  }

  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= largeScreenSize;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        final _width = constraint.maxWidth;

        if (_width < smallScreenSize) return SmallScreen;

        if (_width >= smallScreenSize && _width < mediumScreenSize) {
          return MediumScreen;
        }

        if (_width >= mediumScreenSize && _width <= largeScreenSize) {
          return CustomScreen;
        }

        return LargeScreen;
      },
    );
  }
}
