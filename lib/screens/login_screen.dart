import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_app/constants/color_constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentDirectional.topCenter,
          end: AlignmentDirectional.bottomCenter,
          colors: [
            Color(0xFF323A99),
            Color(0xFFF98BFC),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            _imageContainer(),
            _boxContainer(),
          ],
        ),
      ),
    );
  }

  Widget _imageContainer() {
    return Positioned(
      top: 75.0,
      right: 0,
      bottom: 0,
      left: 0,
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: AssetImage('assets/images/rocket.png'),
            ),
          ),
          Expanded(
            child: Container(),
          )
        ],
      ),
    );
  }

  Widget _boxContainer() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: ColorConstants.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
