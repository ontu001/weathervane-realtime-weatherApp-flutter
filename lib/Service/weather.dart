import 'location.dart';
import 'network.dart';

const url ="https://api.openweathermap.org/data/2.5/weather";
const apiKey = "94d21ac82a90c89d510c3c9830b53652";
class WeatherModel{

  Future <dynamic> cityNameWeather(String cityName) async{
    String CityUrl ="$url?q=$cityName&appid=$apiKey&units=metric";
    NetworkHelper networkHelper = NetworkHelper(CityUrl);
    var WeatherData = await networkHelper.getData();
    return WeatherData;
  }

  Future <dynamic> getLocationWeather()async{
    Location location = Location();
    await location.getLocation();
    NetworkHelper networkHelper = NetworkHelper("$url?lat=${location.latti}&lon=${location.longi}&appid=$apiKey&units=metric");
    var WeatherData = await networkHelper.getData();
    return WeatherData;
  }

}