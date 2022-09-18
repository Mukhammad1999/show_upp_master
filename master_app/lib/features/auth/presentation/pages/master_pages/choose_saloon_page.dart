import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/app/ui/widgets/text_fields/search_with_button_field.dart';
import 'package:master_app/localization/translation_strings.dart';

class ChooseSaloonPage extends StatelessWidget {
  const ChooseSaloonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        foregroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.0),
            child: SearchWithButtonField(
              enabled: true,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 17,
            ),
            child: Text(
              TranslationStrings.auth.possibleSaloons.tr(),
              style: AppTypography.smallText.copyWith(
                letterSpacing: 1.71,
                color: Theme.of(context).disabledColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
