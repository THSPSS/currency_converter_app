import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage> {

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final inputAmountController = TextEditingController();
  String convertedToAmount = '0';

  @override
  void dispose() {
    inputAmountController.dispose();
    super.dispose();
  }

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
               Text(
                convertedToAmount, 
                style: const TextStyle(
                fontSize: 85,
                fontWeight: FontWeight.bold,
                color : Colors.white
               )
               ),
               //padding and container
               //contrl + shift + R : refactoring widget
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                    controller: inputAmountController,
                    decoration: const InputDecoration(
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
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                      signed: true
                    ),
                 ),
               ),
               //Button

               //raised and textbutton has same propreties, but design is slightly different
               //raised has tapping effect
               //textButton : appears like a text  
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: ElevatedButton(
                  onPressed: () {
                    // get the value of inputAmontController.text and multiply it with usd 0.00072 
                    var resultOfConv = (int.parse(inputAmountController.text)*0.00072).toStringAsFixed(2);
                    debugPrint('result of convert $resultOfConv');
                    // update text variable
                    setState(() {
                      convertedToAmount = resultOfConv;
                    });
                  },
                  style : ButtonStyle(
                    elevation: const MaterialStatePropertyAll(10.0),
                    backgroundColor: const MaterialStatePropertyAll(Colors.white),
                    foregroundColor: const MaterialStatePropertyAll(Colors.black),
                    //double.infinity has media width
                    minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 50)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )
                    )
                  ),
                  child: const Text('Convert')),
               )
          ],
          ),
        ),
        );
  }
}