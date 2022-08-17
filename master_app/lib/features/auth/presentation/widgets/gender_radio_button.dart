import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';

class GenderRadioButton extends StatelessWidget {
  const GenderRadioButton({
    super.key,
    required this.gender,
    required this.isSelected,
  });
  final Gender gender;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      switchInCurve: Curves.easeIn,
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) => ScaleTransition(
        scale: animation,
        child: child,
      ),
      child: isSelected
          ? SelectedRadioButton(title: gender.genderToString)
          : UnselectedRadioButton(title: gender.genderToString),
    );
  }
}

class SelectedRadioButton extends StatelessWidget {
  const SelectedRadioButton({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: Theme.of(context).indicatorColor,
        borderRadius: BorderRadius.circular(57),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.check,
            size: 27,
            color: Theme.of(context).backgroundColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 7.0),
            child: Text(
              title,
              style: AppTypography.smallText.copyWith(
                color: Theme.of(context).backgroundColor,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}

class UnselectedRadioButton extends StatelessWidget {
  const UnselectedRadioButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(7),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 27,
            width: 27,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.71,
                color: Theme.of(context).hintColor,
              ),
              borderRadius: BorderRadius.circular(
                27,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: AppTypography.smallText,
          )
        ],
      ),
    );
  }
}
