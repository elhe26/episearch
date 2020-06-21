import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../utils/config_reader.dart';
import '../models/global.dart';
import '../models/country.dart';
import '../models/api_points.dart';

@lazySingleton
class APIService {
  APIPoints _apiPoints = ConfigReader.endpoints;
  Global _global;
  List<Country> _countries;
  BaseOptions _options = BaseOptions(
    connectTimeout: 10000,
    receiveTimeout: 10000,
  );

  // * Variable definition

  // * Getters
  Global get global => _global;

  List<Country> get countries => _countries;

  // * Setters
  set global(Global value) {
    _global = value;
  }

  set countries(List<Country> value) {
    _countries = value;
  }

  // ! Functions
  // * Retorna la data relacionada al pais seleccionado
  Country countryData({String countryNameSlug}) {
    final Country country = _countries
        .where((countryMap) => countryMap.slug == countryNameSlug)
        .first;
    return country;
  }

  // * Sumarizacion datos
  Future summary() async {
    Dio dio = Dio(_options);
    try {
      final response = await dio.get("${_apiPoints.baseUrl}/summary");

      if (response.statusCode == 200) {
        final Map<String, dynamic> bodyData = response.data;
        if (bodyData.isNotEmpty) {
          final Map<String, dynamic> globalData = bodyData["Global"];
          final dateDate = bodyData["Date"];
          final value = DateTime.tryParse(dateDate);
          globalData["Date"] = value;

          // ? Realizando casts para leer contenido JSON
          List<dynamic> cData = bodyData["Countries"];
          final List<Map<String, dynamic>> countriesData =
              List<Map<String, dynamic>>.from(cData);

          _global = Global.fromJson(globalData);
          _countries = countriesData
              .map((country) => Country.fromJson(country))
              .toList();
          return true;
        }
        return "Error de servicio. Intente mas tarde.";
      }
      return response;
    } on DioError catch (e) {
      if (e.type == DioErrorType.CONNECT_TIMEOUT ||
          e.type == DioErrorType.RECEIVE_TIMEOUT) {
        return "Revise la conexion de internet.";
      } else if (e.response != null) {
        return "Revise la conexion de internet.";
      } else {
        return "Problemas con el servidor. Intente mas tarde.";
      }
    }
  }
}
