import 'package:flutter/material.dart';

class MyBottomNavigationBar {
  static const listOfBottomBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.document_scanner_outlined),
      label: "Overview",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart_outlined),
      label: "Groceries",
    ),
    BottomNavigationBarItem(icon: Icon(Icons.cloud_outlined), label: "Weather"),
    BottomNavigationBarItem(icon: Icon(Icons.edit_document), label: "Bills"),
    BottomNavigationBarItem(
        icon: Icon(Icons.person_2_outlined), label: "Person"),
  ];
}
