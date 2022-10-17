import 'package:flutter/material.dart';

class FlossySlider extends StatefulWidget {
  final Function(double value) onChanged;
  final Color color;
  final String? startText;
  final String? endText;
  const FlossySlider({Key? key, required this.onChanged, required this.color, this.startText, this.endText})
      : super(key: key);

  @override
  State<FlossySlider> createState() => _FlossySliderState();
}

class _FlossySliderState extends State<FlossySlider> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: _currentSliderValue,
          max: 100,
          divisions: 5,
          activeColor: widget.color,
          inactiveColor: widget.color.withOpacity(0.5),
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            widget.onChanged(value);
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Padding(
              padding: EdgeInsets.all(1.0),
              child: Text("Nervous", textAlign: TextAlign.start),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: const [
                  Text(
                    "Excited",
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
