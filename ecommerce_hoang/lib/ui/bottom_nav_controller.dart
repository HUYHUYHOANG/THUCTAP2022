import 'package:ecommerce_hoang/ui/bottom_nav_pages/cart.dart';
import 'package:ecommerce_hoang/ui/bottom_nav_pages/favourite.dart';
import 'package:ecommerce_hoang/ui/bottom_nav_pages/home.dart';
import 'package:ecommerce_hoang/ui/bottom_nav_pages/profile.dart';
import 'package:flutter/material.dart';

import '../const/AppColors.dart';


class BottomNavController extends StatefulWidget {
  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  final _pages = [Home(),Favourite(),Cart(),Profile()];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "E-Commerce",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: AppColors.deep_orange,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        selectedLabelStyle:
        TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ("Trang Chủ"),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: ("Yêu Thích")),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: ("Giỏ hàng"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ("Cá nhân"),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            print(_currentIndex);
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
