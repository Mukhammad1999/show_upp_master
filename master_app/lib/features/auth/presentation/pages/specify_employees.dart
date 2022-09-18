import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/navigation/route_names.dart';
import 'package:master_app/app/ui/images/images.dart';
import 'package:master_app/app/ui/widgets/buttons/app_wrapped_text_button.dart';
import 'package:master_app/app/ui/widgets/cartoon_displayer.dart';
import 'package:master_app/app/ui/widgets/curvatures.dart';
import 'package:master_app/app/ui/widgets/curved_app_bar.dart';
import 'package:master_app/app/ui/widgets/small_description.dart';
import 'package:master_app/app/ui/widgets/text_fields/search_with_button_field.dart';
import 'package:master_app/app/ui/widgets/titles.dart';
import 'package:master_app/localization/translation_strings.dart';

class SpecifyEmployees extends StatelessWidget {
  const SpecifyEmployees({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CurvedAppBar(
        backgroundColor: Theme.of(context).primaryColor,
        curvature: Curvature.lined,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SemiBoldTitle(
                title: TranslationStrings.role.saloon.tr(),
              ),
              const SizedBox(
                height: 32,
              ),
              const CartoonDisplayer(
                assetName: SvgImages.scissorsSearchEmployees,
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmallDescription(
                      text: TranslationStrings.auth.specifyEmployeesDescription
                          .tr(),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    SearchWithButtonField(
                      onTap: () =>
                          Modular.to.pushNamed(RouteName.searchEmployeesPage),
                      enabled: true,
                      showCursor: false,
                    )
                  ],
                ),
              ),
              const Spacer(),
              AppWrappedTextButton(
                  isLoading: false,
                  bottomText: TranslationStrings.common.specifyLater.tr(),
                  title: TranslationStrings.common.done.tr(),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
