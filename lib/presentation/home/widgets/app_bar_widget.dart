import 'package:flutter/material.dart';
import 'package:hermosa/domain/auth/user.dart';

AppBar buildAppBar(User user) {
  return AppBar(
    leading: IconButton(
      onPressed: () {},
      icon: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(
              user.photoURL,
            ),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0,
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 10),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none_rounded,
            color: Colors.black,
          ),
        ),
      ),
    ],
  );
}
