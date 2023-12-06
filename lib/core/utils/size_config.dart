

import 'package:flutter/material.dart';



class VerticalSize extends StatelessWidget {
  const VerticalSize( this.value);
  final double value ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10 * value ,
    );
  }
}

class HorizontalSize extends StatelessWidget {
  const HorizontalSize( this.value );
  final double value ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 10 * value ,
    );
  }
}
