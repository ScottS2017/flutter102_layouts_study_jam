import 'package:flutter/material.dart';
import 'package:flutter102_layout_n_route/solution_code/step5/CustomButton.dart';


/// Using our custom button class, make a horizontal row of 3 buttons.
/// Use the named parameters to customize each one.
/// ***** Note that you can call the named parameter in any order (but
/// please don't do this... it's really annoying).
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

          /// Don't call parameters in random order... Except to get revenge on someone.
          CustomButton(color: color, icon: Icons.call, label: 'CALL'),
          CustomButton(color: color, label: 'ROUTE', icon: Icons.call,),
          CustomButton(label: 'SHARE', color: color, icon: Icons.share),
        ],
      ),
    );
  }
}