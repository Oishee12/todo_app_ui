import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.label,
    this.text,
    this.controller,
    this.readOnly,
    this.hintText,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.fillColor,
    this.filled = false,
    this.isPassword = false,
    this.contentPadding,
    this.validator,
    this.maxLines,
    this.minLines,

  });

  final String? text;
  final TextEditingController? controller;
  final String? hintText;
  final bool? readOnly;
  final String? label;
  final InputBorder? border;
  final Color? fillColor;
  final bool? filled;
  final List<BoxShadow>? boxShadow;
  final double? borderRadius;
  final bool isPassword;
  final FormFieldValidator<String>? validator;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines;
  final int? minLines;


  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;
  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.filled == true ? widget.fillColor ?? Colors.white : null,
        boxShadow: widget.boxShadow,
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Text(
                widget.label!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          TextFormField(
            controller: widget.controller,
            readOnly: widget.readOnly ?? false,
            enableSuggestions: false,
            autocorrect: false,
            autofillHints: null,
            obscureText: widget.isPassword ? _obscureText : false,
            validator: widget.validator,
            maxLines: widget.maxLines ?? 1,
            minLines: widget.minLines ?? 1,

            decoration: InputDecoration(
              hintText: widget.hintText,
              filled: widget.filled ?? false,
              fillColor: widget.fillColor,
              border: InputBorder.none,
              contentPadding:
                  widget.contentPadding ??
                  EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                      onPressed: _toggleVisibility,
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
