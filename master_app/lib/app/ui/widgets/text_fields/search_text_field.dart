import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/localization/translation_strings.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({
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
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
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
        contentPadding: const EdgeInsets.fromLTRB(21, 6, 6, 6),
        suffixIcon: SearchButton(
          onPressed: () => widget.onButtonTap!.call(
            _textEditingController.value.text,
          ),
        ),
        hintText: TranslationStrings.common.search.tr().toUpperCase(),
        hintStyle: AppTypography.appBarTitleStyle.copyWith(
          color: Theme.of(context).hintColor,
        ),
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

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(
          6,
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
            Icons.search,
            color: Theme.of(context).backgroundColor,
          ),
        ),
      ),
    );
  }
}
