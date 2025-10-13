import 'package:flutter/material.dart';
import 'package:weather_by_search/models/weather_model.dart';

final Map<int, MaterialColor> weatherThemeMapper = {
  // ☀️ Clear / Sunny
  1000: Colors.orange,

  // ☁️ Cloudy / Overcast
  1003: Colors.cyan,
  1006: Colors.cyan,
  1009: Colors.cyan,

  // 🌫️ Mist / Fog
  1030: Colors.blueGrey,
  1135: Colors.blueGrey,
  1147: Colors.blueGrey,

  // 🌧️ Rain related
  1063: Colors.lightBlue,
  1180: Colors.lightBlue,
  1183: Colors.blue,
  1186: Colors.blue,
  1189: Colors.blue,
  1192: Colors.indigo,
  1195: Colors.indigo,
  1240: Colors.blue,
  1243: Colors.indigo,
  1246: Colors.indigo,

  // ❄️ Snow related
  1066: Colors.blueGrey,
  1114: Colors.lightBlue,
  1117: Colors.lightBlue,
  1210: Colors.lightBlue,
  1213: Colors.lightBlue,
  1216: Colors.blueGrey,
  1219: Colors.blueGrey,
  1222: Colors.blueGrey,
  1225: Colors.blueGrey,
  1255: Colors.lightBlue,
  1258: Colors.lightBlue,

  // ⛈️ Thunder / Storm
  1087: Colors.deepPurple,
  1273: Colors.deepPurple,
  1276: Colors.deepPurple,
  1279: Colors.indigo,
  1282: Colors.indigo,

  // 🧊 Sleet / Ice
  1069: Colors.cyan,
  1204: Colors.cyan,
  1207: Colors.cyan,
  1249: Colors.cyan,
  1252: Colors.cyan,
  1237: Colors.cyan,
  1261: Colors.cyan,
  1264: Colors.cyan,

  // 🧥 Freezing drizzle / ice rain
  1072: Colors.lightBlue,
  1150: Colors.lightBlue,
  1153: Colors.lightBlue,
  1168: Colors.lightBlue,
  1171: Colors.lightBlue,
  1198: Colors.lightBlue,
  1201: Colors.lightBlue,
  182: Colors.lightBlue,

  // ❌ Fallback
  9999: Colors.grey,
};

/// Helper function to get a color safely
MaterialColor getWeatherTheme({required WeatherModel? weather}) {
  if (weather == null) {
    return Colors.blueGrey; // Default color if model is null
  }
  final code = weather.weatherCode;
  return weatherThemeMapper[code] ?? Colors.blueGrey;
}
