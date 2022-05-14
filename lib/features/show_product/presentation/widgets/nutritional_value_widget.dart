import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:flutter/material.dart';

class NutritionalValueWidget extends StatefulWidget {
  final String value;
  const NutritionalValueWidget(this.value, {Key? key}) : super(key: key);

  @override
  State<NutritionalValueWidget> createState() => NutritionalValueWidgetState();
}

class NutritionalValueWidgetState extends State<NutritionalValueWidget> {
  bool _showValue = false;

  _toggleShowValue() {
    setState(() {
      _showValue = !_showValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
          ),
          onPressed: _toggleShowValue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  'Nutritional Value per 10g',
                  style: AppConfig.getTextStyle(
                    context: context,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Icon(
                _showValue ? Icons.expand_less : Icons.expand_more,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Visibility(
          visible: _showValue,
          child: Text(
            'It contains ${widget.value} Calories per 10 grams',
            textAlign: TextAlign.left,
            style: AppConfig.getTextStyle(
              context: context,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }
}
