import 'package:options_gk/common/ui_constants.dart';
import 'package:flutter/material.dart';

class DropDown extends StatelessWidget {
  const DropDown(
      {required this.onChanged,
      required this.defaultValue,
      required this.values,
      this.hintText});
  final Function(String?) onChanged;
  final String defaultValue;
  final List<String> values;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: DropdownButtonFormField<String>(
        icon: Icon(
          Icons.arrow_drop_down_circle_outlined,
          color: Theme.of(context).colorScheme.secondary,
        ),
        iconSize: 25,
        decoration: kTextFieldDecoration(Theme.of(context))
            .copyWith(labelText: hintText ?? ''),
        value: defaultValue,
        onChanged: onChanged,
        items: values
            .map((String value) =>
                DropdownMenuItem<String>(value: value, child: Text(value)))
            .toList(),
      ),
    );
  }
}
