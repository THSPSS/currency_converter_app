import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
                      //Color(0xAARRGGBB) alpha , red , green, black
                      //0xFF000000
                      borderSide: BorderSide(
                        width: 2.0,
                      )
                    );

    return Scaffold(
        backgroundColor: Colors.green,
        body : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               const Text('O' , 
               style: TextStyle(
                fontSize: 85,
                fontWeight: FontWeight.bold,
                color : Colors.white
               )
               ),
               //padding and container
               //contrl + shift + R : refactoring widget
               const Padding(
                 padding: EdgeInsets.all(8.0),
                 child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20.0),
                      hintText: 'Please enter amount in KRW',
                      hintStyle: TextStyle(
                        color : Colors.black
                      ),
                      prefixIcon: Icon(
                        Icons.monetization_on, 
                        color: Colors.black
                        ),
                      filled : true,
                      fillColor: Colors.white38,
                      focusedBorder: border,
                      enabledBorder: border
                    ),
                    keyboardType: TextInputType.numberWithOptions(
                      decimal: true,
                      signed: true
                    ),
                 ),
               ),
               //Button

               //raised
               //appears like a text
               TextButton(
                onPressed: () {
                  print('button clicked');
                }, 
                child: const Text('Click Here!'))
          ],
          ),
        ),
        );
  }
}