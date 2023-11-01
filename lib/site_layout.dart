import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/utils/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/large_screen.dart';
import 'package:flutter_web_dashboard/widgets/small_screen.dart';
import 'package:flutter_web_dashboard/widgets/top_nav.dart';

import 'constants/style.dart';

class SiteLayout extends StatefulWidget {
  const SiteLayout({super.key});

  @override
  State<SiteLayout> createState() => _SiteLayoutState();
}

class _SiteLayoutState extends State<SiteLayout> {
  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavigationBar(context),
      drawer: const Drawer(
        backgroundColor: Colors.blue,
      ),
      body: ResponsiveWidget(
        LargeScreen(),
        LargeScreen(),
        SmallScreen(),
        LargeScreen(),
      ),
    );
    ;
  }
}
