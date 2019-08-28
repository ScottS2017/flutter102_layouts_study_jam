import 'package:flutter/material.dart';
import 'package:flutter102_layout_n_route/step6/ButtonColumn.dart';

class ButtonSection extends StatelessWidget {

  final Color color;

  ButtonSection({
    @required this.color,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonColumn(color: color, icon: Icons.call, label: 'CALL'),
          ButtonColumn(color: color, icon: Icons.near_me, label: 'ROUTE'),
          ButtonColumn(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}