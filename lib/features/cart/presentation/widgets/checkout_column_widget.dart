import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/core/utilities/constants.dart';
import 'package:flutter/material.dart';

class CheckoutColumnWidget extends StatelessWidget {
  final double totalPrice;
  const CheckoutColumnWidget({
    required this.totalPrice,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                'Total:',
                style: AppConfig.getTextStyle(
                  context: context,
                  textSize: TextSize.large,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Text(
                '€${totalPrice.toStringAsFixed(2)}',
                textAlign: TextAlign.right,
                style: AppConfig.getTextStyle(
                  context: context,
                  textSize: TextSize.large,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Checkout'),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
