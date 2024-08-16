import 'package:flutter/material.dart';

class CurrConverterMaterialPage extends StatefulWidget {
  const CurrConverterMaterialPage({super.key});

  @override
  State<CurrConverterMaterialPage> createState() {
    return _CurrConverterMaterialPageState();
  }
}

class _CurrConverterMaterialPageState extends State<CurrConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myBorder = OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.white54,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(12));

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 22, 22, 22),
        title: const Text(
          "Akhand ka App",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "₹${result.toStringAsFixed(2)}",
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255)),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                controller: textEditingController,
                style:
                    const TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                decoration: InputDecoration(
                  hintText: "Enter the amount in USD",
                  hintStyle: const TextStyle(
                      color: Colors.white54, fontStyle: FontStyle.italic),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.white54,
                  filled: true,
                  fillColor: Colors.black87,
                  enabledBorder: myBorder,
                  focusedBorder: myBorder,
                ),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = (double.parse(textEditingController.text) * 82);
                  });
                },
                style: const ButtonStyle(
                  elevation: WidgetStatePropertyAll(2),
                  backgroundColor: WidgetStatePropertyAll(Colors.black87),
                  foregroundColor: WidgetStatePropertyAll(Colors.white60),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
