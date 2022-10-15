import 'package:collapsible_sidebar/collapsible_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/side_menu_data.dart';

class SideBarScreen extends StatelessWidget {
  const SideBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<SideMenuController>(
          init: SideMenuController(),
          builder: (controller) {
            return CollapsibleSidebar(
              isCollapsed: MediaQuery.of(context).size.width <= 800,
              items: controller.items!,
              title: 'Tushar',
              onTitleTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Home Page Tapped'),
                  ),
                );
              },
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 100),
                  child: Text(
                    controller.label!,
                    style: const TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              backgroundColor: Colors.black,
              selectedTextColor: Colors.teal,
              textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
              titleStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            );
          }
        ),
      ),
    );
  }
}