import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:master_app/app/ui/images/images.dart';
import 'package:master_app/app/ui/style/app_theme.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/localization/translation_strings.dart';

class SearchField extends StatefulWidget {
  const SearchField({
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
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
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
      cursorColor: AppTheme.lightTheme.primaryColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(21, 6, 6, 6),
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          child: SvgPicture.asset(
            SvgImages.searchNormal,
          ),
        ),
        hintText: TranslationStrings.search.search.tr().toUpperCase(),
        hintStyle: AppTypography.appBarTitleStyle.copyWith(
          color: Theme.of(context).hintColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AppTheme.lightTheme.primaryColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: AppTheme.lightTheme.primaryColor,
          ),
        ),
      ),
    );
    ;
  }
}
