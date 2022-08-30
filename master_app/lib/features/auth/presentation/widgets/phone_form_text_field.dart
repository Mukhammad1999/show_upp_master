import 'package:flutter/material.dart';
import 'package:mask_input_formatter/mask_input_formatter.dart';
import 'package:master_app/app/ui/style/app_colors.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/features/auth/presentation/widgets/string_form_erase_button.dart';

/// Text Form Field for collecting phone numbers
class PhoneFormTextField extends StatefulWidget {
  const PhoneFormTextField({
    super.key,
    this.onErase,
    this.onChanged,
    required this.isFullFilled,
  });

  final VoidCallback? onErase;
  // ignore: inference_failure_on_function_return_type
  final Function(String)? onChanged;
  final bool isFullFilled;
  @override
  State<PhoneFormTextField> createState() => _PhoneFormTextFieldState();
}

class _PhoneFormTextFieldState extends State<PhoneFormTextField> {
  late final TextEditingController _textEditingController;
  // ignore: lines_longer_than_80_chars
  final MaskInputFormatter myFormatter =
      MaskInputFormatter(mask: '(##) ### ## ##');

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
      keyboardType: TextInputType.number,
      inputFormatters: [myFormatter],
      style: AppTypography.hintStyle,
      controller: _textEditingController,
      onChanged: (value) {
        final newTest = value.replaceAll(RegExp('[()]'), '')
          ..replaceAll(' ', '');

        widget.onChanged?.call(newTest);
      },
      decoration: InputDecoration(
        prefixIconConstraints: const BoxConstraints(),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Text(
            '998   ',
            style: AppTypography.hintStyle.copyWith(
              color: AppColorsLight.textColor,
            ),
          ),
        ),
        hintText: '( __ )   ___ __ __',
        hintStyle: AppTypography.hintStyle,
        contentPadding: const EdgeInsets.fromLTRB(22.81, 25, 25, 17),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.4),
        ),
        suffixIcon: EraseButton(
          isFullFill: widget.isFullFilled,
          onErase: () {
            _textEditingController.clear();
            widget.onErase?.call();
          },
        ),
      ),
    );
  }
}
