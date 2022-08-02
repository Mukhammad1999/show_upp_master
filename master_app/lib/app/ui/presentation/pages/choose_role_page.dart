import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:master_app/app/index/index.dart';
import 'package:master_app/app/ui/widgets/cartoon_displayer.dart';
import '../../widgets/buttons/buttons.dart';

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
                title: 'choose_role_question'.tr(),
              ),
              const SizedBox(
                height: 59,
              ),
              const CartoonDisplayer(
                assetName: 'assets/svg/question_choose_role.svg',
              ),
            ],
          ),
          Column(
            children: [
              AppTextButton(
                title: 'master'.tr(),
                onPressed: () {},
              ),
              const SizedBox(
                height: 25,
              ),
              AppTextButton(
                title: 'saloon'.tr(),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
