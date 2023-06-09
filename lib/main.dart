import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_app/constants/color_constants.dart';
import 'package:flutter_instagram_clone_app/screens/home_screen.dart';
import 'package:flutter_instagram_clone_app/screens/login_screen.dart';
import 'package:flutter_instagram_clone_app/screens/switch_account_screen.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'GM',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorConstants.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15.0),
                ),
              ),
              textStyle: TextStyle(fontFamily: 'GB', fontSize: 16.0)),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pattern1.png'),
            colorFilter: ColorFilter.mode(
              Color(0xff1C1F2E).withOpacity(0.1),
              BlendMode.dstIn,
            ),
            alignment: Alignment.topLeft,
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Center(
              child: Container(
                child: Image.asset('assets/images/logo_splash.png'),
                width: 200.0,
              ),
            ),
            Positioned(
              bottom: 30.0,
              child: Column(
                children: [
                  Text(
                    'From',
                    style: TextStyle(
                      color: ColorConstants.white.withOpacity(0.3),
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'ExpertFlutter',
                    style: TextStyle(
                      color: ColorConstants.blue,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
