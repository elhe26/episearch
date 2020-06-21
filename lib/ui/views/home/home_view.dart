import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../shared/app_colors.dart';
import '../../shared/shared_styles.dart';
import '../../widgets/home_appbar.dart';
import '../../widgets/test_card.dart';
import '../../widgets/global_card.dart';
import '../../widgets/local_card.dart';
import '../../widgets/notes_carousel.dart';
import '../../../app/app_viewmodel.dart';

class HomeView extends ViewModelWidget<EpiSearchViewModel> {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, EpiSearchViewModel model) {
    return Scaffold(
      appBar: HomeBar(),
      body: RefreshIndicator(
        onRefresh: model.getSummaryData,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: smallFieldHeight),
                GestureDetector(
                  child: TestCard(),
                  onTap: () {},
                ),
                SizedBox(height: smallFieldHeight),
                GestureDetector(
                  child: GlobalCard(),
                  onTap: () async {
                    if (model.canVibrate) {
                      model.vibration();
                      await model.getSummaryData();
                    } else {
                      await model.getSummaryData();
                    }
                  },
                ),
                SizedBox(height: smallFieldHeight),
                GestureDetector(
                  child: LocalCard(),
                  onTap: () async {
                    if (model.canVibrate) {
                      model.vibration();
                      await model.getSummaryData();
                    } else {
                      await model.getSummaryData();
                    }
                  },
                ),
                SizedBox(height: smallFieldHeight),
                Text(
                  "Notas Importantes",
                  style: GoogleFonts.quicksand(
                    color:
                        model.isDarkTheme ? whiteMonoLetter : blackMonoLetter,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: inputFieldBottomMargin),
                NotesCarousel(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
