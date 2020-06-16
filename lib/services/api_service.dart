import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

import '../utils/config_reader.dart';
import '../models/global.dart';
import '../models/country.dart';
import '../models/api_points.dart';

@injectable
class APIService {
  APIPoints _apiPoints = ConfigReader.endpoints;
  Global _global;
  List<Country> _countries;

  // * Getters
  Global get global => _global;

  List<Country> get countries => _countries;

  // ! Functions
  // * Retorna la data relacionada al pais seleccionado
  Country countryData({String countryName}) {
    final Country country = _countries
        .where((countryMap) => countryMap.country == countryName)
        .first;
    return country;
  }

  // * Sumarizacion datos
  Future summary() async {
    final response = await http.get("${_apiPoints.baseUrl}/summary");

    if (response.statusCode == 200) {
      final Map<String, dynamic> bodyData = json.decode(response.body);
      if (bodyData.isNotEmpty) {
        final Map<String, dynamic> globalData = bodyData["Global"];

        // ? Realizando casts para leer contenido JSON
        List<dynamic> cData = bodyData["Countries"];
        final List<Map<String, dynamic>> countriesData =
            List<Map<String, dynamic>>.from(cData);

        _global = Global.fromJson(globalData);
        _countries =
            countriesData.map((country) => Country.fromJson(country)).toList();
        return true;
      }
      return "Error servicio. Intente mas tarde.";
    }

    return response;
  }
}
