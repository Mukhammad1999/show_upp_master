import 'package:flutter/material.dart';

class LocationCircleMarker extends StatelessWidget {
  const LocationCircleMarker({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: color.withOpacity(0.5),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(
              color: Colors.white,
              width: 2,
            ),
            color: color,
          ),
        ),
      ),
    );
  }
}
