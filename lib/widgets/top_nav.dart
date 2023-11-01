import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/utils/responsiveness.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

AppBar TopNavigationBar(BuildContext context) {
  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  return AppBar(
    leading: !ResponsiveWidget.isSmallScreen(context)
        ? Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 18),
                child: Image.asset(
                  StyleConstant.logoPath,
                  width: 18,
                ),
              )
            ],
          )
        : Builder(
            builder: (context) {
              return IconButton(
                onPressed: () => openDrawer(context),
                icon: const Icon(Icons.menu),
              );
            },
          ),
    elevation: 0,
    title: Row(
      children: [
        const Visibility(
          child: CustomText(
              fontWeight: FontWeight.bold,
              color: StyleConstant.lightGrey,
              fontSize: 20,
              text: "Dashboard"),
        ),
        Expanded(
          child: Container(),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings,
            color: StyleConstant.dark.withOpacity(0.7),
          ),
        ),
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: StyleConstant.dark.withOpacity(0.7),
              ),
            ),
            Positioned(
              top: 7,
              right: 7,
              height: 12,
              width: 12,
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: StyleConstant.active,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: StyleConstant.light,
                    width: 2,
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
          width: 1,
          height: 22,
          color: StyleConstant.lightGrey,
        ),
        const SizedBox(
          width: 24,
        ),
        CustomText(
          fontWeight: FontWeight.normal,
          color: StyleConstant.lightGrey,
          fontSize: 16,
          text: "Tahmid Kabir",
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          padding: EdgeInsets.all(2),
          margin: EdgeInsets.all(2),
          child: CircleAvatar(
            backgroundColor: StyleConstant.light,
            child: Icon(
              Icons.person_outlined,
              color: StyleConstant.dark,
            ),
          ),
        ),
      ],
    ),
    iconTheme: IconThemeData(
      color: StyleConstant.dark,
    ),
  );
}
