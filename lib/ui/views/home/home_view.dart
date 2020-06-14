import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';
import '../../shared/app_colors.dart';
import '../../shared/shared_styles.dart';
import '../../widgets/home_appbar.dart';
import '../../widgets/test_card.dart';
import '../../widgets/global_card.dart';
import '../../widgets/local_card.dart';
import '../../widgets/notes_carousel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) {
        return Scaffold(
          backgroundColor: whiteMonoLetter,
          appBar: HomeBar(),
          body: SingleChildScrollView(
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
                    onTap: () {},
                  ),
                  SizedBox(height: smallFieldHeight),
                  GestureDetector(
                    child: LocalCard(),
                    onTap: () {},
                  ),
                  SizedBox(height: smallFieldHeight),
                  Text(
                    "Notas Importantes",
                    style: GoogleFonts.quicksand(
                      color: blackMonoLetter,
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
        );
      },
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
