import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.add),
          title: CustomText(fontWeight: FontWeight.normal, color: StyleConstant.lightGrey, fontSize: 16, text: "OverView"),
        )
      ],
    );
  }
}
