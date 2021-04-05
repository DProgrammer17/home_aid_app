import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String labelText, hintText;
  final Function(String) validator;
  final Function(String) onSaved;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController controller;

  const InputField({
    Key key,
    @required this.labelText,
    @required this.hintText,
    @required this.validator,
    @required this.onSaved,
    @required this.keyboardType,
    this.obscureText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Opacity(
        opacity: 0.9,
        child: TextFormField(
          obscureText: obscureText,
          controller: controller,
          style: TextStyle(color: Colors.white),
          textCapitalization: TextCapitalization.words,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              // borderSide: BorderSide.none,
            ),
          ),
          textInputAction: TextInputAction.next,
          validator: validator,
          onSaved: onSaved,
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
      ),
    );
  }
}
