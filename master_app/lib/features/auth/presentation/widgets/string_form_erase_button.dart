// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:master_app/app/ui/style/app_typography.dart';

///use StringTextFormField to collect String from user, like name, surname
class StringTextFormField extends StatefulWidget {
  const StringTextFormField({
    super.key,
    this.suffixIcon,
    this.hint,
    this.onErase,
    this.onChanged,
    required this.isFullFilled,
  });
  final Widget? suffixIcon;
  final String? hint;
  final VoidCallback? onErase;
  // ignore: inference_failure_on_function_return_type
  final Function(String)? onChanged;
  final bool isFullFilled;

  @override
  State<StringTextFormField> createState() => _StringTextFormFieldState();
}

class _StringTextFormFieldState extends State<StringTextFormField> {
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
    return TextFormField(
      onChanged: widget.onChanged,
      controller: _textEditingController,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: AppTypography.hintStyle,
        suffixIcon: EraseButton(
          isFullFill: widget.isFullFilled,
          onErase: () {
            _textEditingController.clear();
            widget.onErase?.call();
          },
        ),
        contentPadding: const EdgeInsets.fromLTRB(22.81, 17, 17, 17),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(11.4),
        ),
      ),
    );
  }
}

class EraseButton extends StatelessWidget {
  const EraseButton({
    super.key,
    required this.isFullFill,
    this.onErase,
  });
  final VoidCallback? onErase;
  final bool isFullFill;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onErase,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 230),
        transitionBuilder: (child, animation) {
          return ScaleTransition(
            scale: animation,
            child: child,
          );
        },
        child: isFullFill
            ? const FullFillTextFormButton()
            : const NonFullFillTextFormButton(),
      ),
    );
  }
}

class FullFillTextFormButton extends StatelessWidget {
  const FullFillTextFormButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final side = constraints.maxWidth > 300 ? 30.0 : 20.0;
      final iconSize = constraints.maxWidth > 300 ? 17.0 : 13.0;
      final borderRadius = constraints.maxWidth > 300 ? 10.0 : 5.0;

      return Container(
        margin: const EdgeInsets.all(17),
        height: side,
        width: side,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
          color: Theme.of(context).indicatorColor,
        ),
        child: Icon(
          Icons.check,
          size: iconSize,
          color: Theme.of(context).backgroundColor,
        ),
      );
    });
  }
}

class NonFullFillTextFormButton extends StatelessWidget {
  const NonFullFillTextFormButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final side = constraints.maxWidth > 300 ? 30.0 : 20.0;
      final iconSize = constraints.maxWidth > 300 ? 17.0 : 13.0;
      final borderRadius = constraints.maxWidth > 300 ? 10.0 : 5.0;
      print(constraints.maxWidth);
      return Container(
        margin: const EdgeInsets.all(17),
        height: side,
        width: side,
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Theme.of(context).hintColor,
          ),
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
        child: Icon(
          Icons.close,
          size: iconSize,
        ),
      );
    });
  }
}
