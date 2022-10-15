import 'package:collapsible_sidebar/collapsible_sidebar/collapsible_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideMenuController extends GetxController {
  List<CollapsibleItem>? items;
  String? label;

  List<CollapsibleItem> get generateItems {
    return [
      CollapsibleItem(
        text: 'Dashboard',
        icon: Icons.assessment,
        onPressed: () {
          label = 'Dashboard';
          update();
        },
        isSelected: true,
      ),
      CollapsibleItem(
        text: 'Profile',
        icon: Icons.person,
        onPressed: () {
          label = 'Profile';
          update();
        },
      ),
      CollapsibleItem(
        text: 'Search',
        icon: Icons.search,
        onPressed: () {
          label = 'Search';
          update();
        },
      ),
      CollapsibleItem(
        text: 'Notifications',
        icon: Icons.notifications,
        onPressed: () {
          label = 'Notifications';
          update();
        },
      ),
      CollapsibleItem(
        text: 'Settings',
        icon: Icons.settings,
        onPressed: () {
          label = 'Settings';
          update();
        },
      ),
      CollapsibleItem(
        text: 'Logout',
        icon: Icons.logout,
        onPressed: () {
          label = 'Logout';
          update();
        },
      ),
      CollapsibleItem(
        text: 'About',
        icon: Icons.info,
        onPressed: () {
          label = 'About';
          update();
        },
      ),
      CollapsibleItem(
        text: 'Contact',
        icon: Icons.contact_mail,
        onPressed: () {
          label = 'Contact';
          update();
        },
      ),
      CollapsibleItem(
        text: 'Help',
        icon: Icons.help,
        onPressed: () {
          label = 'Help';
          update();
        },
      ),
      CollapsibleItem(
        text: 'Feedback',
        icon: Icons.feedback,
        onPressed: () {
          label = 'Feedback';
          update();
        },
      ),
      CollapsibleItem(
        text: 'Terms & Conditions',
        icon: Icons.description,
        onPressed: () {
          label = 'Terms & Conditions';
          update();
        },
      ),
    ];
  }

  @override
  void onInit() {
    items = generateItems;
    label = items!.firstWhere((item) => item.isSelected).text;
    super.onInit();
  }
}
