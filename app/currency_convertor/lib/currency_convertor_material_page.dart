//1. Create a variable to store converted currency value.
//2. Create function that does conversion with exchange rate
//3. Store the value in variable we created.
//4. Display variable
import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});

  @override
  State<CurrencyConvertorMaterialPage> createState() =>
      _CurrencyConvertorMaterialPageState();
}

//private class cos of _, everything inside extends State class is mutable [Can be change]
class _CurrencyConvertorMaterialPageState
    extends State<CurrencyConvertorMaterialPage> {
  late double
      result; //or double result = 0; else there will be an compilation error
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    // debug, release, profile
    // if (kDebugMode) {
    //   //print('button click');
    //   print(textEditingController.text);
    // }
    setState(() {
      result = double.parse(textEditingController.text) * 81;
    });
  }

  @override
  void initState() {
    super.initState();
    result = 0;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController
        .dispose(); //it is important to avoid memory leak, applies to all controller
    super.dispose();
  }

  //always keep build function as simple as possible. If phone has 120 hertz refresh rate, then
  //in 1 sec refresh 120 times. One build will have 8ms to finish drawing. If take more than
  //that, may lose frame result in frame shuttering.
  @override
  Widget build(BuildContext context) {
    const boarder = OutlineInputBorder(
      //Color(0xAARRGGBB)
      borderSide: BorderSide(
        color: Colors.white,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('Currency Convertor'),
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.all(10.0),
              color: Colors.black,
              child: Text(
                'SGD ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 45.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Please enter amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: boarder,
                  enabledBorder: boarder,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: convert,
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.black),
                    foregroundColor: MaterialStatePropertyAll(Colors.white),
                    minimumSize: MaterialStatePropertyAll(
                      Size(double.infinity, 50),
                    )),
                child: const Text('Convert'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    textEditingController.value =
                        const TextEditingValue(text: '');
                    result = 0;
                  });
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.black38),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  minimumSize: MaterialStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                ),
                child: const Text('Reset'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black26,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ),
                ),
                child: const Text('Help'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
