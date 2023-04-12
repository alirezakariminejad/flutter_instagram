import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_app/constants/color_constants.dart';
import 'package:dotted_border/dotted_border.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.black,
        elevation: 0,
        title: Container(
          child: Image.asset('assets/images/moodinger_logo.png'),
          width: 128.0,
        ),
        actions: [
          Container(
            width: 25,
            child: Image.asset('assets/images/icon_direct.png'),
            margin: EdgeInsets.only(right: 15.0),
          )
        ],
      ),
      backgroundColor: ColorConstants.black,
      body: SafeArea(
        child: _getPostList(),
      ),
    );
  }

  Widget _getPostList() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 15.0),
            _headOfPost(),
            SizedBox(height: 15.0),
            _bodyOfPost(),
            SizedBox(height: 30.0),
          ],
        );
      },
    );
  }

  Container _bodyOfPost() {
    return Container(
      // width: MediaQuery.of(context).size.width,
      width: 395.0,
      height: 427.0,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Image.asset('assets/images/post_cover.png'),
          Positioned(
            right: 15.0,
            top: 15.0,
            child: Image.asset('assets/images/icon_video.png'),
          ),
          Positioned(
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 20,
                  sigmaY: 20,
                ),
                child: Container(
                  width: 340.0,
                  height: 46.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      // color: ColorConstants.white,
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.5),
                            Color.fromRGBO(255, 255, 255, 0.2),
                          ])),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon_hart.png'),
                          SizedBox(width: 5.0),
                          Text(
                            '2.6K',
                            style: TextStyle(
                              color: ColorConstants.white,
                              fontFamily: 'GB',
                              fontSize: 14.0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon_comments.png'),
                          SizedBox(width: 5.0),
                          Text(
                            '1.5K',
                            style: TextStyle(
                              color: ColorConstants.white,
                              fontFamily: 'GB',
                              fontSize: 14.0,
                            ),
                          )
                        ],
                      ),
                      Image.asset('assets/images/icon_share.png'),
                      Image.asset('assets/images/icon_save.png'),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _headOfPost() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              _getAddImageStoryBox(
                width: 36.0,
                height: 36.0,
                dashPattern: [15, 5],
              ),
              SizedBox(width: 10.0),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'alirezakariminejad',
                    style: TextStyle(
                        color: ColorConstants.white,
                        fontFamily: 'GM',
                        fontSize: 16.0),
                  ),
                  Text(
                    'علیرضا کریمی نژاد برنامه نویس موبایل',
                    style: TextStyle(
                        color: ColorConstants.white,
                        fontFamily: 'SM',
                        fontSize: 16.0),
                  ),
                ],
              )
            ],
          ),
          Image.asset('assets/images/icon_menu.png')
        ],
      ),
    );
  }

  Widget _getAddImageStoryBox({
    double radius = 17.0,
    double padding = 4.0,
    double strokeWidth = 2.0,
    double width = 56.0,
    double height = 56.0,
    List<double> dashPattern = const <double>[30, 5],
  }) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(radius),
      padding: EdgeInsets.all(padding),
      color: ColorConstants.pink,
      strokeWidth: strokeWidth,
      dashPattern: dashPattern,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: Container(
          width: width,
          height: height,
          color: Colors.amber,
          child: Image.asset('assets/images/profile.png'),
        ),
      ),
    );
  }

  Widget _getAddStoryBox() {
    return Container(
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
    );
  }
}
