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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sign in to',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 20.0,
                          fontFamily: 'GB'),
                    ),
                    SizedBox(width: 5.0),
                    Image(
                      image: AssetImage('assets/images/mood.png'),
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Column(
                  children: [
                    SizedBox(
                      width: 130.0,
                      height: 45.0,
                      child: ElevatedButton(
                        // style: Theme.of(context).elevatedButtonTheme.style,
                        onPressed: () {},
                        child: Text(
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'GB',
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'don\'t have an account?',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        fontSize: 16.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Text(
                        '/',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
