import 'package:flutter/material.dart';

import '../shared/app_colors.dart';

class HomeBar extends StatelessWidget with PreferredSizeWidget {
  HomeBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: whiteMonoLetter,
      leading: IconButton(
        icon: Icon(Icons.card_giftcard),
        color: darkMonoGrey,
        onPressed: () {
          print("card pressed!");
        },
      ),
      centerTitle: true,
      title: IconButton(
        icon: Icon(
          Icons.healing,
          size: 35,
          color: lightPink,
        ),
        onPressed: () {
          print("Logo pressed!");
        },
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.wb_sunny,
              color: darkMonoGrey,
            ),
            onPressed: () {
              print("Sun pressed!");
            }),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
