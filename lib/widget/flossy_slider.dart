import 'package:flutter/material.dart';

class FlossySlider extends StatefulWidget {
  final Function(double value) onChanged;
  final Color color;
  final String? startText;
  final String? endText;
  const FlossySlider({Key? key, required this.onChanged, required this.color, this.startText, this.endText}) : super(key: key);

  @override
  State<FlossySlider> createState() => _FlossySliderState();
}

class _FlossySliderState extends State<FlossySlider> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Theme(
          data: ThemeData(
            sliderTheme: SliderThemeData(overlayShape: SliderComponentShape.noOverlay)
          ),
          child: Slider(
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
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.startText ?? ""),
              Text(widget.endText ?? ""),
            ],
          ),
        )
      ],
    );
  }
}
