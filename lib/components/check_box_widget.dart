import 'package:flutter/material.dart';

class CheckBoxWidget extends StatelessWidget {
  const CheckBoxWidget(
      {required this.fieldName, this.initialValue = false, this.onChanged});
  final String fieldName;
  final bool initialValue;
  final Function(bool? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(fieldName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
        Checkbox(
            activeColor: Theme.of(context).colorScheme.primary,
            value: initialValue,
            onChanged: onChanged)
      ]),
    );
  }
}
