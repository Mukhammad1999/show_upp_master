import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:master_app/app/index/index.dart';

class MasterFormRegistration extends StatelessWidget {
  const MasterFormRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CurvedAppBar(
        curvature: Curvature.rightToLeft,
        title: 'master'.tr(),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SemiBoldTitle(
              title: 'your_data'.tr(),
            ),
            const SizedBox(
              height: 22,
            ),
            StringTextFormField(),
          ],
        ),
      ),
    );
  }
}

///use StringTextFormField to collect String from user, like name, surnname
class StringTextFormField extends StatelessWidget {
  const StringTextFormField({
    super.key,
    this.suffixIcon,
  });
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: const EraseButton(isFullFill: true),
        contentPadding: const EdgeInsets.fromLTRB(22.81, 17, 17, 17),
        suffixIconConstraints: const BoxConstraints(
          maxHeight: 30,
          maxWidth: 30,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.4),
        ),
      ),
    );
  }
}

class EraseButton extends StatelessWidget {
  const EraseButton({super.key, required this.isFullFill});

  final bool isFullFill;

  @override
  Widget build(BuildContext context) {
    return isFullFill
        //identifier of check
        ? Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                width: 2,
                color: Theme.of(context).hintColor,
              ),
            ),
            child: Center(),
          )
        //identifier of not fullfilling
        : Container();
  }
}
