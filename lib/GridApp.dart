import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 64,
      // how many in each row => crossAxisCount: 4
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
      itemBuilder: (context, index) => Container(
        color: Colors.white,
        margin: const EdgeInsets.all(2),
      ),
    );
  }
}