import 'package:clientes/ui/views/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../shared/app_colors.dart';

class HomeBar extends ViewModelWidget<HomeViewModel> with PreferredSizeWidget {
  HomeBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, HomeViewModel model) {
    return AppBar(
      elevation: 0,
      backgroundColor: whiteMonoLetter,
      leading: IconButton(
        icon: Icon(Icons.card_giftcard),
        color: darkMonoGrey,
        onPressed: model.aboutDialog,
      ),
      centerTitle: true,
      title: IconButton(
        icon: Image.asset(
          "assets/logo/logo-icon.png",
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
