import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//stfl stateful Widget 
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {

  @override
  void initState() {
    super.initState();
    print('build');
  }

  final inputAmountController = TextEditingController();
  late double convertedToAmount = 0;

  void convert() {
    setState(() {
      convertedToAmount = double.parse(inputAmountController.text) * 1391.18;
    });
  }


  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGreen,
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: Colors.transparent,
          middle: Text('Currency Converter'),
        ),
        child : Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  'KRW ${convertedToAmount != 0 ? convertedToAmount.toStringAsFixed(2) : convertedToAmount.toStringAsFixed(0)}', 
                  style: const TextStyle(
                  fontSize:50,
                  fontWeight: FontWeight.bold,
                  color : Colors.white
                 )
                 ),
                 //padding and container
                 //contrl + shift + R : refactoring widget
                 CupertinoTextField(
                    controller: inputAmountController,
                    decoration: BoxDecoration(
                      color : CupertinoColors.black,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    placeholder: 'Please enter the amount in USD',
                    prefix: const Icon(CupertinoIcons.money_dollar),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                      signed: true
                    ),
                 ),
                 const SizedBox(height: 10.0,),
                 //Button
                CupertinoButton(
                onPressed: convert,
                color : CupertinoColors.white,
                child: const Text('Convert'))
              ]
            ),
          )
          )
        );
  }
}