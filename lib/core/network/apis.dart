class ApiApp {
  static const String baseUrl = 'http://api.weatherapi.com/v1';
  static const String weatherEndpoint = 'forecast.json';
  static const String apiKey = '4257966ca19f417884e113913253005';
  //static String cityName = searchController.text;
  static const int daysNumber = 1;
  static String getWeatherApi(String cityName) =>
      '$baseUrl/$weatherEndpoint?key=$apiKey&q=$cityName&days=$daysNumber';
}
