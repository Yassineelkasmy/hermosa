import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hermosa/presentation/utils/add_space.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/google.svg",
                      fit: BoxFit.fitHeight,
                    ),
                    addHorizontalSpace(15),
                    const Text("Continue with Google"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
