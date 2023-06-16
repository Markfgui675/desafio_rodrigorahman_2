import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Button(),
    theme: ThemeData.dark(),
  ));
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Desafio Rodrigo Rahman'),
        centerTitle: true,
      ),
      body: Center(

        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            padding: const EdgeInsets.only(top: 16, bottom: 16, right: 32, left: 32),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 2),
                      blurRadius: 12
                  )
                ]
            ),
            child: const Text('Tap Me', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          ),
        ),

      )
    );
  }
}
