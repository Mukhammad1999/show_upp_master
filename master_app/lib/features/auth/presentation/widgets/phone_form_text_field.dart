import 'package:flutter/material.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:master_app/features/auth/presentation/widgets/string_form_erase_button.dart';

/// Text Form Field for collecting phone numbers
class PhoneFormTextField extends StatefulWidget {
  const PhoneFormTextField({super.key});

  @override
  State<PhoneFormTextField> createState() => _PhoneFormTextFieldState();
}

class _PhoneFormTextFieldState extends State<PhoneFormTextField> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    _textEditingController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      controller: _textEditingController,
      inputFormatters: [PhoneInputFormatter()],
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(22.81, 17, 17, 17),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.4),
        ),
        suffixIcon: const EraseButton(isFullFill: false),
      ),
    );
  }
}
