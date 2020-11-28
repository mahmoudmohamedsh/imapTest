import 'package:flutter/material.dart';
import 'package:imaptest/addproduct_screen.dart';
import 'package:imaptest/cart_screen.dart';
import 'package:imaptest/home_screen.dart';
import 'package:imaptest/notyet_screen.dart';
import 'package:imaptest/order_screen.dart';

class MyDrawerBuilder extends StatelessWidget {
  List<String> drawerTitle = [
    'Home',
    'Profile',
    'Cart',
    'Orders',
    'Add Product',
    'Contact us',
    'Settings',
    'sign out',
  ];

  List<IconData> drawerLeading = [
    Icons.home,
    Icons.person,
    Icons.add_shopping_cart,
    Icons.shopping_cart,
    Icons.add,
    Icons.contact_support,
    Icons.settings,
    Icons.exit_to_app,
  ];
  List sceens = [
    HomeScreen(),
    NotYet(
      title: 'person',
    ),
    CartScreen(),
    OrderScreen(),
     AddProduct(),
    NotYet(
      title: 'contact us',
    ),
     NotYet(
      title: 'setting',
    ),
     NotYet(
      title: 'sign out',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drawerTitle.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: ListTile(
            title: Text(drawerTitle[index]),
            leading: Icon(drawerLeading[index]),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => sceens[index]),
            );
          },
        );
      },
    );
  }
}
