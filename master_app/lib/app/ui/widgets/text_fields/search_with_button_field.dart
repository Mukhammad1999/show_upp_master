import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/localization/translation_strings.dart';

class SearchWithButtonField extends StatefulWidget {
  const SearchWithButtonField({
    super.key,
    this.onTap,
    this.onChanged,
    required this.enabled,
    this.showCursor,
    this.onButtonTap,
  });
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final bool? enabled;
  final bool? showCursor;
  final Function(String)? onButtonTap;

  @override
  State<SearchWithButtonField> createState() => _SearchWithButtonFieldState();
}

class _SearchWithButtonFieldState extends State<SearchWithButtonField> {
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
      showCursor: widget.showCursor ?? true,
      onTap: widget.onTap,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(21, 6, 6, 6),
        suffixIcon: SearchButton(
          onPressed: () => widget.onButtonTap!.call(
            _textEditingController.value.text,
          ),
        ),
        hintText: TranslationStrings.search.search.tr().toUpperCase(),
        hintStyle: AppTypography.appBarTitleStyle.copyWith(
          color: Theme.of(context).hintColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
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
