import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/navigation/route_names.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/app/ui/widgets/buttons/app_text_button.dart';
import 'package:master_app/app/ui/widgets/cartoon_displayer.dart';
import 'package:master_app/app/ui/widgets/curvatures.dart';
import 'package:master_app/app/ui/widgets/curved_app_bar.dart';
import 'package:master_app/app/ui/widgets/text_fields/search_with_button_field.dart';
import 'package:master_app/app/ui/widgets/titles.dart';
import 'package:master_app/localization/translation_strings.dart';

class WorkerOrFreelancerPage extends StatelessWidget {
  const WorkerOrFreelancerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CurvedAppBar(
        curvature: Curvature.rightToLeft,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SemiBoldTitle(
              title: TranslationStrings.role.master.tr().toUpperCase(),
            ),
            const CartoonDisplayer(
              assetName: 'assets/svg/master.svg',
            ),
            Text(
              TranslationStrings.auth.saloonWorker.tr(),
              textAlign: TextAlign.center,
              maxLines: 2,
              style: AppTypography.smallDescription.copyWith(
                color: Theme.of(context).highlightColor,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            GestureDetector(
              onTap: () {
                Modular.to.pushNamed(RouteName.chooseSaloonPage);
              },
              child: const Hero(
                tag: 'chooseSaloon',
                child: SearchWithButtonField(
                  enabled: false,
                ),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  TranslationStrings.auth.or.tr(),
                  style: AppTypography.smallText.copyWith(
                    color: Theme.of(context).hintColor,
                  ),
                ),
                const SizedBox(
                  height: 22,
                ),
                AppTextButton(
                  title: TranslationStrings.auth.onFreelance.tr(),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
