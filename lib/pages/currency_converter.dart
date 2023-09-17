import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double price = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(
            //Color(0xAARRGGBB)
            color: Color.fromARGB(255, 255, 255, 255),
            width: 2,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: BorderRadius.all(Radius.circular(10)));
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 31, 31, 31),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          title: const Text("Currency Converter"),
          elevation: 0,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'INR ${price != 0 ? price.toStringAsFixed(3) : price.toStringAsFixed(0)}',
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 255, 255, 255))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              child: TextField(
                  controller: textEditingController,
                  keyboardType: const TextInputType.numberWithOptions(
                      decimal: true, signed: false),
                  style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255)),
                  decoration: const InputDecoration(
                      hintText: 'Please enter the amount in USD',
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 205, 202, 202)),
                      prefixIcon: Icon(Icons.monetization_on),
                      prefixIconColor: Colors.white60,
                      focusedBorder: border,
                      enabledBorder: border)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    price = double.parse(textEditingController.text) * 83.07;
                  });
                },
                // style: TextButton.styleFrom(); <--- instead of using Button Style use this for better experience
                style: ButtonStyle(
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                    elevation: const MaterialStatePropertyAll(15),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.black),
                    fixedSize: const MaterialStatePropertyAll(
                        Size(double.maxFinite, 50))),
                child: const Text("Convert"),
              ),
            )
          ],
        )));
  }
}
