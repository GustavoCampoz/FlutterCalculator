// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() => runApp(const Calculator());

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculator> {
  double _result = 0.0;
  String _currentValue = '';
  String _lastOperation = '';

  void _onButtonPressed(String text) {
    setState(() {
      switch (text) {
        case '+':
        case '-':
        case '*':
        case '/':
          _lastOperation = text;
          _result = double.parse(_currentValue);
          _currentValue = '';
          break;
        case '=':
          switch (_lastOperation) {
            case '+':
              _result += double.parse(_currentValue);
              break;
            case '-':
              _result -= double.parse(_currentValue);
              break;
            case '*':
              _result *= double.parse(_currentValue);
              break;
            case '/':
              _result /= double.parse(_currentValue);
              break;
          }
          _currentValue = _result.toString();
          _lastOperation = '';
          break;
        case 'C':
          _result = 0.0;
          _currentValue = '';
          _lastOperation = '';
          break;
        default:
          _currentValue += text;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                color: Colors.grey.shade200,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    _currentValue.isEmpty ? '0' : _currentValue,
                    style: const TextStyle(fontSize: 48.0),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                _buildButton('7'),
                _buildButton('8'),
                _buildButton('9'),
                _buildButton('/'),
              ],
            ),
            Row(
              children: <Widget>[
                _buildButton('4'),
                _buildButton('5'),
                _buildButton('6'),
                _buildButton('*'),
              ],
            ),
            Row(
              children: <Widget>[
                _buildButton('1'),
                _buildButton('2'),
                _buildButton('3'),
                _buildButton('-'),
              ],
            ),
            Row(
              children: <Widget>[
                _buildButton('C'),
                _buildButton('0'),
                _buildButton('='),
                _buildButton('+'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String text) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () => _onButtonPressed(text),
          child: Text(
            text,
            style: const TextStyle(fontSize: 32.0),
          ),
        ),
      ),
    );
  }
}