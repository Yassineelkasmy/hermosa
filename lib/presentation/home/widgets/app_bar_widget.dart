import 'package:flutter/material.dart';
import 'package:hermosa/domain/auth/user.dart';

AppBar buildAppBar(User user) {
  return AppBar(
    leading: buildAppBarUserProfileImage(user.photoURL),
    backgroundColor: Colors.white,
    elevation: 0,
    actions: buildAppBarActions(),
  );
}

Widget buildAppBarUserProfileImage(String imageUrl) {
  return IconButton(
    onPressed: () {},
    icon: Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.fitWidth,
        ),
      ),
    ),
  );
}

List<Widget> buildAppBarActions() {
  return [
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
  ];
}
