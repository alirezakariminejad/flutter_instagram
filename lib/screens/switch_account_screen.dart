import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_app/constants/color_constants.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1F2E),
      body: Container(
        width: double.infinity,
        height: double.infinity,
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
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/images/switch_account_background.png'),
                  alignment: AlignmentDirectional.topCenter,
                  fit: BoxFit.contain,
                ),
              ),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    width: 340.0,
                    height: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(255, 255, 255, 0.7),
                          Color.fromRGBO(255, 255, 255, 0.2)
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 130.0,
                          height: 130.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15.0)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/profile2.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'AlirezaKariminejad',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('data'),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Switch Account',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 60.0,
              child: Row(
                children: [
                  Text(
                    'don\'t have an account?',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.5),
                        fontSize: 16.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      '/',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                          fontSize: 16.0),
                    ),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 16.0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
