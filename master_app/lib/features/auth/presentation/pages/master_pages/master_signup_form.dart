import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:master_app/app/enums/gender.dart';
import 'package:master_app/app/index/index.dart';
import 'package:master_app/features/auth/presentation/widgets/index.dart';
import 'package:master_app/localization/translation_strings.dart';

class MasterFormRegistration extends StatelessWidget {
  const MasterFormRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    final masterBloc = context.read<MasterFormBloc>();
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CurvedAppBar(
          curvature: Curvature.rightToLeft,
          title: TranslationStrings.role.master.tr().toUpperCase(),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: BlocConsumer<MasterFormBloc, MasterFormState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () => null,
              success: (entity) => Modular.to.pushNamed(RouteName.otpPage),
            );
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SemiBoldTitle(
                    title: TranslationStrings.auth.yourData.tr(),
                  ),
                  //field for collecting name from the user
                  Expanded(
                    flex: 13,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StringTextFormField(
                          isFullFilled:
                              state.masterFormEntity.name!.length >= 2,
                          hint: TranslationStrings.auth.name.tr(),
                          onChanged: (name) {
                            masterBloc.add(
                              MasterFormEvent.update(
                                updateEvent: UpdateMasterForm.name(name: name),
                              ),
                            );
                          },
                          onErase: () {
                            masterBloc.add(
                              const MasterFormEvent.update(
                                updateEvent: UpdateMasterForm.name(name: ''),
                              ),
                            );
                          },
                        ),
                        StringTextFormField(
                          isFullFilled:
                              state.masterFormEntity.surname!.length >= 2,
                          hint: TranslationStrings.auth.surname.tr(),
                          onChanged: (surname) {
                            masterBloc.add(
                              MasterFormEvent.update(
                                updateEvent: UpdateMasterForm.surname(
                                  surname: surname,
                                ),
                              ),
                            );
                          },
                          onErase: () {
                            masterBloc.add(
                              const MasterFormEvent.update(
                                updateEvent:
                                    UpdateMasterForm.surname(surname: ''),
                              ),
                            );
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: PhoneFormTextField(
                            isFullFilled: state.masterFormEntity.phoneNumber!
                                    .trim()
                                    .length ==
                                12,
                            onChanged: (phoneNumber) {
                              masterBloc.add(
                                MasterFormEvent.update(
                                  updateEvent: UpdateMasterForm.phoneNumber(
                                    phoneNumber: phoneNumber,
                                  ),
                                ),
                              );
                            },
                            onErase: () {
                              masterBloc.add(
                                const MasterFormEvent.update(
                                  updateEvent: UpdateMasterForm.phoneNumber(
                                    phoneNumber: '',
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(
                            Gender.values.length,
                            (index) => GestureDetector(
                              onTap: () {
                                masterBloc.add(
                                  MasterFormEvent.update(
                                    updateEvent: UpdateMasterForm.gender(
                                      gender: Gender.values[index],
                                    ),
                                  ),
                                );
                              },
                              child: GenderRadioButton(
                                gender: Gender.values[index],
                                isSelected: state.masterFormEntity.gender ==
                                    Gender.values[index],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        AutoSizeText(
                          TranslationStrings.auth.fillInMasterForm.tr(),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: AppTypography.smallDescription.copyWith(
                            color: Theme.of(context).highlightColor,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        AppTextButton(
                          isLoading: state.maybeWhen(
                            orElse: () => false,
                            loading: (entity) => true,
                          ),
                          title: TranslationStrings.auth.confirm.tr(),
                          onPressed: (state.masterFormEntity.phoneNumber!
                                          .trim()
                                          .length ==
                                      12) &&
                                  (state.masterFormEntity.surname!.length >=
                                      2) &&
                                  (state.masterFormEntity.name!.length >= 2)
                              ? () {
                                  masterBloc
                                      .add(const MasterFormEvent.submit());
                                }
                              : null,
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
