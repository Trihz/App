class WeatherLogic {
  /// variable to store the weather forecast farm details
  List farmWeatherForecastDetails = [
    ["Corn Field", "17", "11", "0.86", "96", "1016"],
    ["Maize Field", "16", "9", "0.56", "85", "2078"]
  ];

  /// function to return the farm weather forecast details
  List getForecastDetails() {
    return farmWeatherForecastDetails;
  }
}
