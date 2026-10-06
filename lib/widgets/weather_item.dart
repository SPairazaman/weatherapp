import 'package:flutter/material.dart';

class WeatherItem extends StatelessWidget {
  String asset;
  String data;
  WeatherItem({super.key,required this.asset,required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/icons/$asset.png",height: 50,),
        Text(data, style: TextStyle(fontSize: 14, color: Colors.white)),
      ],
    );
  }
}