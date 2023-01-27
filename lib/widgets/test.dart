import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String inputValue = "test";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: TextFormField(
          decoration: InputDecoration(hintText: inputValue),
          textInputAction: TextInputAction.done,
          onFieldSubmitted: (newValue) {
         
            setState(() {
              inputValue = newValue;
            });
               print(inputValue);
          
          },
          
        ),
      ),
    );
  }
}
