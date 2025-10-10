final Map<int, String> weatherImageMapper = {
  // ☀️ Clear / Sunny
  1000: 'assets/images/clear.png',

  // ☁️ Cloudy / Overcast
  1003: 'assets/images/cloudy.png',
  1006: 'assets/images/cloudy.png',
  1009: 'assets/images/cloudy.png',

  // 🌫️ Mist / Fog
  1030: 'assets/images/cloudy.png',
  1135: 'assets/images/cloudy.png',
  1147: 'assets/images/cloudy.png',

  // 🌧️ Rain related
  1063: 'assets/images/rainy.png',
  1180: 'assets/images/rainy.png',
  1183: 'assets/images/rainy.png',
  1186: 'assets/images/rainy.png',
  1189: 'assets/images/rainy.png',
  1192: 'assets/images/rainy.png',
  1195: 'assets/images/rainy.png',
  1240: 'assets/images/rainy.png',
  1243: 'assets/images/rainy.png',
  1246: 'assets/images/rainy.png',

  // ❄️ Snow related
  1066: 'assets/images/snow.png',
  1114: 'assets/images/snow.png',
  1117: 'assets/images/snow.png',
  1210: 'assets/images/snow.png',
  1213: 'assets/images/snow.png',
  1216: 'assets/images/snow.png',
  1219: 'assets/images/snow.png',
  1222: 'assets/images/snow.png',
  1225: 'assets/images/snow.png',
  1255: 'assets/images/snow.png',
  1258: 'assets/images/snow.png',

  // ⛈️ Thunder / Storm
  1087: 'assets/images/thunderstorm.png',
  1273: 'assets/images/thunderstorm.png',
  1276: 'assets/images/thunderstorm.png',
  1279: 'assets/images/thunderstorm.png',
  1282: 'assets/images/thunderstorm.png',

  // 🧊 Sleet / Ice
  1069: 'assets/images/snow.png',
  1204: 'assets/images/snow.png',
  1207: 'assets/images/snow.png',
  1249: 'assets/images/snow.png',
  1252: 'assets/images/snow.png',
  1237: 'assets/images/snow.png',
  1261: 'assets/images/snow.png',
  1264: 'assets/images/snow.png',

  // 🧥 Freezing drizzle / ice
  1072: 'assets/images/rainy.png',
  1150: 'assets/images/rainy.png',
  1153: 'assets/images/rainy.png',
  1168: 'assets/images/rainy.png',
  1171: 'assets/images/rainy.png',
  1198: 'assets/images/rainy.png',
  1201: 'assets/images/rainy.png',
  182: 'assets/images/rainy.png',

  // ❌ Fallback (error / unknown)
  9999: 'assets/images/error.gif',
};

//accept weather code to return suitable image
String getWeatherImageByCode(int code) {
  return weatherImageMapper[code] ?? 'assets/images/error.gif';
}
