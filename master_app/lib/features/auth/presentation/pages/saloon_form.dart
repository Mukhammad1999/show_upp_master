import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:master_app/app/navigation/route_names.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/app/ui/widgets/buttons/app_text_button.dart';
import 'package:master_app/app/ui/widgets/curvatures.dart';
import 'package:master_app/app/ui/widgets/curved_app_bar.dart';
import 'package:master_app/app/ui/widgets/text_fields/location_text_field.dart';
import 'package:master_app/app/ui/widgets/titles.dart';
import 'package:master_app/features/auth/presentation/controller/saloon_bloc/saloon_form_bloc.dart';
import 'package:master_app/features/auth/presentation/widgets/phone_form_text_field.dart';
import 'package:master_app/features/auth/presentation/widgets/string_form_erase_button.dart';
import 'package:master_app/localization/translation_strings.dart';

class SaloonFormPage extends StatelessWidget {
  SaloonFormPage({super.key});

  final _saloonBloc = Modular.get<SaloonBloc>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CurvedAppBar(
          backgroundColor: Theme.of(context).primaryColor,
          curvature: Curvature.lined,
          title: TranslationStrings.role.saloon.tr(),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: BlocBuilder<SaloonBloc, SaloonFormState>(
              bloc: _saloonBloc,
              // listener: (context, state) {},
              builder: (context, state) {
                return Column(
                  children: [
                    SemiBoldTitle(
                      title: TranslationStrings.auth.yourData.tr(),
                    ),
                    Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          StringTextFormField(
                            isFullFilled: state is FormUpdate &&
                                state.saloonFormEntity.name != null &&
                                state.saloonFormEntity.name!.isNotEmpty,
                            hint: TranslationStrings.auth.name.tr(),
                            onChanged: (name) => _saloonBloc.add(
                              SaloonFormEvent.update(
                                updateEvent: UpdateSaloonForm.name(name: name),
                              ),
                            ),
                            onErase: () => _saloonBloc.add(
                              const SaloonFormEvent.update(
                                updateEvent: UpdateSaloonForm.name(name: ''),
                              ),
                            ),
                          ),
                          LocationTextField(
                            onChanged: (name) {},
                            onButtonTap: (p0) {
                              Modular.to.pushNamed(
                                RouteName.chooseLocationPage,
                                arguments: {
                                  'title': TranslationStrings.role.saloon.tr(),
                                },
                              );
                            },
                            enabled: true,
                          ),
                          PhoneFormTextField(
                            isFullFilled: state is FormUpdate &&
                                state.saloonFormEntity.phoneNumber != null &&
                                state.saloonFormEntity.phoneNumber!.isNotEmpty,
                            onChanged: (phoneNumber) => _saloonBloc.add(
                              SaloonFormEvent.update(
                                updateEvent: UpdateSaloonForm.phoneNumber(
                                  phoneNumber: phoneNumber,
                                ),
                              ),
                            ),
                            onErase: () => _saloonBloc.add(
                              const SaloonFormEvent.update(
                                updateEvent: UpdateSaloonForm.phoneNumber(
                                    phoneNumber: ''),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
                      flex: 3,
                    ),
                    Expanded(
                      flex: 3,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              TranslationStrings.auth.saloonInfo.tr(),
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              style: AppTypography.smallDescription.copyWith(
                                color: Theme.of(context).highlightColor,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            AppTextButton(
                              isLoading: false,
                              title: TranslationStrings.auth.confirm.tr(),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
