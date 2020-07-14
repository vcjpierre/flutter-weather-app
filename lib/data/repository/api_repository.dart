import 'package:flutter_weather/model/city.dart';

abstract class ApiRepository {
  Future<List<City>> getCities(String text);
  Future<City> getWeathers(City city);
}
