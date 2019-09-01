import 'package:flutter/material.dart';
import 'package:flutter102_layout_n_route/lesson_code/step6/CustomButton.dart';

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
          CustomButton(color: color, icon: Icons.call, label: 'CALL'),
          CustomButton(color: color, icon: Icons.near_me, label: 'ROUTE'),
          CustomButton(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}