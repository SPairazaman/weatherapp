import 'package:climaapp/widgets/forecast_widget.dart';
import 'package:climaapp/widgets/weather_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff2C2F31),
      ),
      backgroundColor: Color(0xff2C2F31),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              Container(
                margin: .symmetric(vertical: 24,horizontal: 20),
                padding: .symmetric(vertical: 32,horizontal: 24),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: .circular(25),
                  gradient: LinearGradient(
                    colors: [Color(0xff2E5FEC), Color(0xff6796F7)],
                    begin: .topLeft,
                    end: .bottomRight,
                    stops: [0.2,0.8]
                    ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Lima - Perú',
                      style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                    SizedBox(height: 10,),
                    Image.asset("assets/icons/heavycloudy.png",height: 100,),
                    Text(
                      '23.9ºC',
                      style: TextStyle(color: Colors.white,fontSize: 70),
                    ),
                    Divider(height: 35,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WeatherItem(asset: "windspeed",data: "18 km/h",),
                        WeatherItem(asset: "humidity",data: "76%",),
                        WeatherItem(asset: "cloud",data: "56%",),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: .all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFF272B2E),
                        borderRadius: .circular(25),
                      ),child: Column(
                        children: [
                            Text('Forecast',style: TextStyle(fontSize: 20,color: Colors.white),),
                            SizedBox(height: 20,),
                            SingleChildScrollView(
                              scrollDirection: .horizontal,
                              child: Row(
                                children: [
                                  ForecastWidget(hour: '01:00',temp: '5.6ºC',),
                                  ForecastWidget(hour: '02:00',temp: '5.9ºC',),
                                  ForecastWidget(hour: '03:00',temp: '5.8ºC',),
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                  ],
                ),
              )
          
            ],
          ),
        ),
      ),
    );
  }
}