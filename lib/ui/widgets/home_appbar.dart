import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:stacked/stacked.dart';

import '../../app/app_viewmodel.dart';

class HomeBar extends ViewModelWidget<EpiSearchViewModel>
    with PreferredSizeWidget {
  HomeBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, EpiSearchViewModel model) {
    return AppBar(
      elevation: Theme.of(context).appBarTheme.elevation,
      backgroundColor: Theme.of(context).appBarTheme.color,
      leading: IconButton(
        icon: Icon(FontAwesomeIcons.idCard),
        color: Theme.of(context).appBarTheme.actionsIconTheme.color,
        onPressed: model.aboutDialog,
      ),
      centerTitle: true,
      title: IconButton(
        icon: Image.asset(
          "assets/logo/logo-icon.png",
        ),
        onPressed: null,
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            !model.isDarkTheme ? Icons.wb_sunny : FontAwesomeIcons.moon,
            color: Theme.of(context).appBarTheme.actionsIconTheme.color,
          ),
          onPressed: () {
            if (model.isDarkTheme) {
              model.setDarkTheme(value: false);
            } else {
              model.setDarkTheme(value: true);
            }
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
