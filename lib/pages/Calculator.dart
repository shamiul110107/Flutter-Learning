import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  get gridDelegate => const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Column(
        children: [
          TextField(),
          Expanded( // Expanded widget added here
            child: Center(
              child: GridView.builder(
                itemCount: 20,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: gridDelegate,
                itemBuilder: (context, index) => Container(
                  width: 40,
                  height: 40,
                  margin: const EdgeInsets.all(2),
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "${index + 1}",
                      style: const TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
