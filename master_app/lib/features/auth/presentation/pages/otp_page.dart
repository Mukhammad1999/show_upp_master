import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:master_app/app/index/index.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/localization/translation_strings.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CurvedAppBar(
        curvature: Curvature.leftToRight,
        title: TranslationStrings.auth.numberVerification.tr(),
      ),
      body: Column(
        children: [
          Text(
            TranslationStrings.auth.numberVerificationDescription.tr(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: PinCodeTextField(
              appContext: context,
              length: 6,
              onCompleted: (value) {},
              animationType: AnimationType.scale,
              useHapticFeedback: true,
              textStyle: AppTypography.numberDigits,
              keyboardType: TextInputType.number,
              autoFocus: true,
              showCursor: false,
              enableActiveFill: true,
              animationDuration: const Duration(milliseconds: 300),
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(6),
                inactiveColor: Theme.of(context).hoverColor,
                inactiveFillColor: Theme.of(context).hoverColor,
                selectedFillColor: Theme.of(context).hoverColor,
                selectedColor: Theme.of(context).primaryColor,
                activeColor: Theme.of(context).hoverColor,
                activeFillColor: Theme.of(context).hoverColor,
                fieldHeight: 70,
              ),
              onChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
