import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/localization/translation_strings.dart';

class LocationTextField extends StatefulWidget {
  const LocationTextField({
    super.key,
    this.onTap,
    this.onChanged,
    required this.enabled,
    this.onButtonTap,
  });
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final bool? enabled;
  final Function(String)? onButtonTap;

  @override
  State<LocationTextField> createState() => _LocationTextFieldState();
}

class _LocationTextFieldState extends State<LocationTextField> {
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
    return TextField(
      onChanged: widget.onChanged,
      enabled: widget.enabled,
      onTap: widget.onTap,
      decoration: InputDecoration(
        suffixIcon: ChooseLocationButton(
          onPressed: () => widget.onButtonTap!.call(
            _textEditingController.value.text != ''
                ? _textEditingController.value.text
                : '',
          ),
        ),
        hintText: TranslationStrings.auth.location.tr(),
        hintStyle: AppTypography.hintStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}

class ChooseLocationButton extends StatelessWidget {
  const ChooseLocationButton({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 9,
          vertical: 3,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Icon(
            Icons.place,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
    );
  }
}
