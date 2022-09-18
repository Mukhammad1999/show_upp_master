import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:master_app/app/index/index.dart';
import 'package:master_app/app/ui/images/images.dart';
import 'package:master_app/app/ui/style/app_colors.dart';
import 'package:master_app/app/ui/widgets/base_app_bar.dart';
import 'package:master_app/app/ui/widgets/small_text.dart';
import 'package:master_app/app/ui/widgets/text_fields/search_field.dart';
import 'package:master_app/localization/translation_strings.dart';

class SearchEmployees extends StatelessWidget {
  const SearchEmployees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(
        trailingTextButton: TranslationStrings.common.done.tr(),
        onTrailingButton: () => Modular.to.pop(),
      ),
      body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: SearchField(enabled: true),
                ),
                _importFromSocialMedia(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16, horizontal: 24.0),
                  child: SmallText(
                      text: TranslationStrings.search.allContacts
                          .tr()
                          .toUpperCase()),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ContactsTile();
                  },
                  itemCount: 10,
                  separatorBuilder: (BuildContext context, int index) {
                    return index != 0 || index != 10
                        ? Divider(
                            color: AppColorsLight.lightGreyColor,
                            height: 2,
                          )
                        : SizedBox();
                  },
                ),
              ],
            ),
          )),
    );
  }

  Widget _importFromSocialMedia() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
      child: Column(
        children: [
          BasicTile(
              iconName: SvgImages.facebook,
              text: TranslationStrings.search.importFromFb.tr()),
          const SizedBox(
            height: 12,
          ),
          BasicTile(
              iconName: SvgImages.twitter,
              text: TranslationStrings.search.importFromTwitter.tr())
        ],
      ),
    );
  }
}

class BasicTile extends StatelessWidget {
  BasicTile({Key? key, required this.iconName, required this.text})
      : super(key: key);

  String iconName;
  String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconName,
          height: 42,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: SmallText(
            text: text,
            bold: true,
          ),
        ),
      ],
    );
  }
}

class ContactsTile extends StatefulWidget {
  const ContactsTile({super.key});

  @override
  State<ContactsTile> createState() => _ContactsTileState();
}

class _ContactsTileState extends State<ContactsTile> {
  String fullname = 'Estelle Holmes';
  String number = '+998 99 888 77 55';
  bool added = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
      color: added
          ? AppColorsLight.lightGreyColor
          : AppColorsLight.backGroundColor,
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            child: SvgPicture.asset(SvgImages.facebook),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(
                  text: fullname,
                  bold: true,
                ),
                SizedBox(
                  height: 4,
                ),
                SmallText(
                  text: number,
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: added
                  ? AppColorsLight.backGroundColor
                  : AppColorsLight.primaryColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: GestureDetector(
              child: Text(
                  added
                      ? TranslationStrings.contacts.added.tr().toUpperCase()
                      : TranslationStrings.contacts.add.tr().toUpperCase(),
                  style: AppTypography.smallText.copyWith(
                      color: added
                          ? AppColorsLight.primaryColor
                          : AppColorsLight.backGroundColor)),
              onTap: () {
                setState(() {
                  added = !added;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
