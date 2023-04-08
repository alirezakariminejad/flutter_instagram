import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_app/constants/color_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.black,
      body: SafeArea(
        child: Center(
          child: Container(
            width: 64.0,
            height: 64.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(17.0),
              ),
              color: ColorConstants.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 64.0,
                height: 64.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  color: ColorConstants.black,
                ),
                child: Image.asset('assets/images/icon_plus.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
