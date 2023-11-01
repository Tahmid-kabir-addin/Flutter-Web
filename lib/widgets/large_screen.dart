import 'package:flutter/material.dart';

import 'menu_items.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Colors.red,
            child: MenuItems(),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
