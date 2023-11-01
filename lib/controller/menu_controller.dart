import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routes/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();

  var activeItem = overviewRoute.obs;
  var hoverItem = "".obs;

  changeActiveItemTo(String item) {
    activeItem.value = item;
  }

  onHover(String item) {
    if (!(activeItem.value == item)) {
      hoverItem.value = item;
    }
  }

  Widget returnIconFor(String itemName) {
    switch(itemName) {
      case overviewRoute:
        return _customIcon(Icons.trending_up, overviewRoute);
    case driversRoute:
        return _customIcon(Icons.drive_eta, driversRoute);
    case clientsRoute:
        return _customIcon(Icons.people_alt_outlined, clientsRoute);
    case logOutRoute:
        return _customIcon(Icons.exit_to_app, logOutRoute);
    default:
        return _customIcon(Icons.exit_to_app, logOutRoute);
    }
  }

  Widget _customIcon(IconData icon, String item) {
    if (activeItem.value == item) {
      return Icon(
        icon,
        size: 22,
        color: StyleConstant.dark,
      );
    }

    return Icon(
      icon,
      color: hoverItem.value == item
          ? StyleConstant.dark
          : StyleConstant.lightGrey,
    );
  }
}
