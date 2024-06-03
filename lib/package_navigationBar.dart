import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';

class PackageNavigationBar extends StatefulWidget {
  const PackageNavigationBar({super.key});

  @override
  State<PackageNavigationBar> createState() => _PackageNavigationBarState();
}

class _PackageNavigationBarState extends State<PackageNavigationBar> {
  int currentIndex = 0;
  final NotchBottomBarController notchBottomBarController =
      NotchBottomBarController(index: 0);

  Color returnColor() {
    switch (currentIndex) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.yellow;
      case 2:
        return Colors.orange;
      case 3:
        return Colors.pink;
      default:
        return Colors.indigo;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: returnColor(),
      bottomNavigationBar: AnimatedNotchBottomBar(
        removeMargins: true,
        notchGradient: const LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.red,
            Colors.green,
          ],
        ),
        notchColor: Colors.white,
        color: Colors.amber,
        bottomBarWidth: MediaQuery.of(context).size.width,
        bottomBarHeight: 80,
        notchBottomBarController: notchBottomBarController,
        onTap: (int value) {
          setState(() {
            currentIndex = value;
          });
        },
        bottomBarItems: const [
          //First Item
          BottomBarItem(
            inActiveItem: Icon(
              Icons.document_scanner_outlined,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.document_scanner,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Overview',
          ),
          //Second Item
          BottomBarItem(
            inActiveItem: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.shopping_cart,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Groceries',
          ),
          //ThirdItem
          BottomBarItem(
            inActiveItem: Icon(
              Icons.cloud_outlined,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.cloud,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Weather',
          ),
          //Fourth Item
          BottomBarItem(
            inActiveItem: Icon(
              Icons.edit_document,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.edit_document,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Bills',
          ),
          //Fifth Item
          BottomBarItem(
            inActiveItem: Icon(
              Icons.person_2_outlined,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.person_2_outlined,
              color: Colors.blueAccent,
            ),
            itemLabel: 'Profile',
          ),
        ],
        kBottomRadius: 0,
        kIconSize: 20,
      ),
    );
  }
}
