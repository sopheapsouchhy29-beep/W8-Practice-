import 'package:flutter/material.dart';

class TemperatureScreen extends StatefulWidget {
  const TemperatureScreen({super.key});

  @override
  State<TemperatureScreen> createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  String _inputCelsius = '';

  final InputDecoration _inputDecoration = InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 2.0),
      borderRadius: BorderRadius.circular(12),
    ),
    hintText: 'Enter a temperature',
    hintStyle: const TextStyle(color: Colors.white),
  );

  String get _fahrenheitText {
    final trimmed = _inputCelsius.trim();
    if (trimmed.isEmpty) {
      return '0';
    }
    final double? celsius = double.tryParse(trimmed);
    if (celsius == null) {
      return 'Invalid input';
    }
    final double fahrenheit = (celsius * 9 / 5) + 32;
    return fahrenheit % 1 == 0
        ? fahrenheit.toInt().toString()
        : fahrenheit.toStringAsFixed(2).replaceFirst(RegExp(r'\.?0+$'), '');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(
                Icons.thermostat_outlined,
                size: 120,
                color: Colors.white,
              ),
              const Center(
                child: Text(
                  "Converter",
                  style: TextStyle(color: Colors.white, fontSize: 45),
                ),
              ),
              const SizedBox(height: 50),
              const Text("Temperature in Degrees:"),
              const SizedBox(height: 10),
              TextField(
                decoration: _inputDecoration,
                style: const TextStyle(color: Colors.white),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: true,
                ),
                onChanged: (value) {
                  setState(() {
                    _inputCelsius = value;
                  });
                },
              ),
              const SizedBox(height: 30),
              const Text("Temperature in Fahrenheit:"),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(_fahrenheitText),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
