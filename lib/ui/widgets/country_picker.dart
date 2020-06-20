import 'package:clientes/app/app_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_material_pickers/flutter_material_pickers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

class CountryPickerButton extends ViewModelWidget<EpiSearchViewModel> {
  const CountryPickerButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, EpiSearchViewModel model) {
    return GestureDetector(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "Cambiar",
          style: GoogleFonts.quicksand(
            color: Theme.of(context).accentColor,
            fontSize: 10,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      onTap: () => showMaterialScrollPicker(
        context: context,
        title: "Selecciona el Pais",
        headerColor: Theme.of(context).appBarTheme.color,
        headerTextColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        buttonTextColor: Theme.of(context).accentColor,
        items: model.countries,
        selectedItem: model.countryName,
        onChanged: (value) => model.countryName = value,
      ),
    );
  }
}
