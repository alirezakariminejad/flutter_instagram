import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_instagram_clone_app/constants/color_constants.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({this.scrollController, super.key});
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(35.0),
        topRight: Radius.circular(35.0),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 30.0,
          sigmaY: 30.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35.0),
              topRight: Radius.circular(35.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromRGBO(255, 255, 255, 0.5),
                Color.fromRGBO(255, 255, 255, 0.2),
              ],
            ),
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 0.0),
            child: _getShareContent(),
          ),
        ),
      ),
    );
  }

  Widget _getShareContent() {
    return CustomScrollView(
      controller: scrollController,
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          children: [
            Container(
              width: 70.0,
              height: 5.0,
              margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
              decoration: BoxDecoration(
                color: ColorConstants.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(100.0),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Share',
                  style: TextStyle(
                    fontFamily: 'GB',
                    fontSize: 24.0,
                    color: ColorConstants.white,
                  ),
                ),
                Image.asset('assets/images/icon_share_bottomsheet.png')
              ],
            ),
            SizedBox(height: 20.0),
            ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(15.0),
              ),
              child: Container(
                height: 45.0,
                margin: EdgeInsets.only(bottom: 30.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.4),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_search.png'),
                      SizedBox(width: 15.0),
                      Expanded(
                        child: TextField(
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        )),
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Container(
              color: Colors.amber,
            );
          }, childCount: 60),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 30.0,
            crossAxisCount: 4,
          ),
        ),
      ],
    );

    // return GridView.builder(
    //   controller: scrollController,
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 4,
    //     mainAxisSpacing: 20.0,
    //     crossAxisSpacing: 30.0,
    //   ),
    //   itemCount: 100,
    //   itemBuilder: (BuildContext context, int index) {
    //     return Container(
    //       color: Colors.amber,
    //     );
    //   },
    // );
  }
}
