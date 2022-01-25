import 'package:flutter/material.dart';
import 'package:hermosa/domain/auth/user.dart';
import 'package:hermosa/presentation/utils/add_space.dart';

AppBar buildAppBar(User user) {
  return AppBar(
    centerTitle: true,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(
                  user.photoURL!,
                ),
                fit: BoxFit.fill),
          ),
        ),
        addHorizontalSpace(10),
        Text(
          user.displayName,
        ),
      ],
    ),
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
    ),
    elevation: 0,
    actions: [
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
