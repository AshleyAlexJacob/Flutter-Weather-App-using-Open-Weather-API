
import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  @override

  void initState() {
    super.initState();
    getLocationData();
  }
  void getLocationData() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getWeatherData();
    Navigator.push(context, MaterialPageRoute(builder: (context){return LocationScreen(locationWeather: weatherData,);}),);
//    Navigator.pushNamed(context, '/second');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F5FC3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(image:DecorationImage(
                  image: AssetImage('images/logo-02.png'),
                ),),
                ),
                SizedBox(height: 10.0,),
                Text('Clima',style: TextStyle(fontSize: 40.0),
            ),
            SizedBox(height: 60.0,),
            SpinKitDoubleBounce(
              color: Colors.white,
              size: 35.0,
            ),
          ],
        ),
      ),
    );
  }
}
