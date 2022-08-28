import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:master_app/app/ui/widgets/buttons/app_rounded_button.dart';
import 'package:master_app/app/ui/widgets/show_up_logo.dart';
import 'package:master_app/features/auth/presentation/widgets/phone_form_text_field.dart';
import 'package:master_app/localization/translation_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: ShowUppLogo(),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const PhoneFormTextField(
                      isFullFilled: true,
                    ),
                    RoundedTextButton(
                      title: TranslationStrings.auth.logIn.tr(),
                      buttonColor: Theme.of(context).primaryColor,
                    ),
                    TextEmphisizer(
                      text: TranslationStrings.auth.or.tr(),
                    ),
                    RoundedTextButton(
                      title: TranslationStrings.auth.signUp.tr(),
                      onPressed: () {},
                      buttonColor: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextEmphisizer extends StatelessWidget {
  const TextEmphisizer({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(
            thickness: 2,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: Text(
            text,
          ),
        ),
        const Expanded(
          child: Divider(
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
