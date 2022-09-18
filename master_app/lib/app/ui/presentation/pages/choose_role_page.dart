import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/index/index.dart';
import 'package:master_app/app/ui/images/images.dart';
import 'package:master_app/app/ui/widgets/cartoon_displayer.dart';
import 'package:master_app/localization/translation_strings.dart';

class ChooseRolePage extends StatelessWidget {
  const ChooseRolePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CurvedAppBar(
        backgroundColor: Theme.of(context).primaryColor,
        curvature: Curvature.lined,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SemiBoldTitle(
                title: TranslationStrings.role.chooseRoleQuestion.tr(),
              ),
              const SizedBox(
                height: 59,
              ),
              const CartoonDisplayer(
                assetName: SvgImages.questionChooseRole,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppTextButton(
                  title: TranslationStrings.role.master.tr().toUpperCase(),
                  onPressed: () =>
                      Modular.to.pushNamed(RouteName.masterFormPage),
                ),
                const SizedBox(
                  height: 25,
                ),
                AppTextButton(
                  title: TranslationStrings.role.saloon.tr().toUpperCase(),
                  onPressed: () =>
                      Modular.to.pushNamed(RouteName.saloonFormPage),
                ),
                const SizedBox(
                  height: 22,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
