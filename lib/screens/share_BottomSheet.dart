import 'dart:ui';

import 'package:flutter/material.dart';

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
            margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
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
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                color: Colors.amber,
              );
            },
          ),
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
