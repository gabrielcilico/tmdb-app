import 'package:flutter/material.dart';
import 'package:tmdb_app/design/theme/palette.dart';

class RateIndicator extends StatelessWidget {
  final double rate;
  final double fontSize;

  const RateIndicator({
    Key? key,
    required this.rate,
    this.fontSize = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: _colorByRate(rate),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        rate.toStringAsFixed(1),
        style: TextStyle(
          color: Palette.labelColor,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Color _colorByRate(double rate) {
    if (rate >= 7) return Colors.green;
    if (rate >= 5) return Colors.yellow;
    return Colors.red;
  }
}