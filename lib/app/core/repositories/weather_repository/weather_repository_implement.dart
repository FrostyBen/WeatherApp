
import 'package:test_flutter_weather/app/core/network/API/API_client.dart';
import 'package:test_flutter_weather/app/core/repositories/weather_repository/weather_repository_base.dart';
import 'package:test_flutter_weather/app/core/services/geolocation_service.dart';

class WeatherRepositoryImpl extends WeatherRepositoryBase {
  final APIClient apiClient;
  final GeolocationServiceBase geoService;

  WeatherRepositoryImpl({required this.apiClient, required this.geoService});

  @override
  Future<dynamic> getTodayWeather() async {
    return apiClient.getWeather(await geoService.getPosition());
  }

  @override
  Future<dynamic> getForecastWeather() async {
    return apiClient.getForecast(await geoService.getPosition());
  }
}
