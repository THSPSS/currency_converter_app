import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Colors.green,
        body : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text('O' , 
               style: TextStyle(
                fontSize: 85,
                fontWeight: FontWeight.bold,
                color : Colors.white
               )
               ),
               TextField(
                style: TextStyle(
                  color: Colors.white
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please enter amount in KRW',
                    hintStyle: TextStyle(
                      color : Colors.black
                    ),
                    prefixIcon: Icon(
                      Icons.monetization_on , 
                      color: Colors.black
                      ),
                    filled : true,
                    fillColor: Colors.white38,
                    focusedBorder: OutlineInputBorder(
                      //Color(0xAARRGGBB) alpha , red , green, black
                      //0xFF000000
                      borderSide: BorderSide(
                        width: 2.0,
                      )
                    )
                  ),
               ),
          ],
          ),
        ),
        );
  }
}