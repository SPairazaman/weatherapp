import 'package:flutter/material.dart';

class ForecastWidget extends StatelessWidget {
  String? hour;
  String? temp;
  ForecastWidget({super.key, this.hour,this.temp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal:8),
      child: Container(
        margin: .only(right: 10,bottom: 30),
        padding: .symmetric(vertical: 20,horizontal: 15),
        decoration: BoxDecoration(
          borderRadius: .circular(25),
          color: Color(0xFF3D4244),
          boxShadow: const [
          BoxShadow(color: Color(0xFF2293ED), blurRadius: 5, offset: Offset(4, 5)),
        ],
      
        ),
        child: Column(
          children: [
            Text(hour!,style: TextStyle(fontSize: 14,color: Color(0xFFFFFFFF)),),
            Image.asset("assets/icons/overcast.png",width: 50,height: 50,),
            Text(temp!,style: TextStyle(fontSize: 16,color: Color(0xFFFFFFFF),fontWeight: .bold),)
        
          ],
        ),
      ),
    );
  }
}