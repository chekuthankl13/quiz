import 'package:flutter/material.dart';

spaceHeight(h) => SizedBox(
      height: h.toDouble(),
    );

spaceWidth(w) => SizedBox(
      width: w.toDouble(),
    );

sH(context) => MediaQuery.of(context).size.height;

sW(context) => MediaQuery.of(context).size.width;

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Widget loading() {
    return const Center(
      child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: LinearProgressIndicator(
              color: Colors.blue,
            ),
          ),
    );}