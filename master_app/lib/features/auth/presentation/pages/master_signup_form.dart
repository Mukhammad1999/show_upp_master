import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:master_app/app/index/index.dart';
import 'package:master_app/app/navigation/route_names.dart';
import 'package:master_app/app/ui/style/app_typography.dart';
import 'package:master_app/app/ui/widgets/buttons/app_text_button.dart';
import 'package:master_app/features/auth/domain/entities/signup_form_entities.dart';
import 'package:master_app/features/auth/presentation/controller/bloc/master_form_bloc.dart';
import 'package:master_app/features/auth/presentation/widgets/index.dart';
import 'package:master_app/localization/translation_strings.dart';

class MasterFormRegistration extends StatelessWidget {
  const MasterFormRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    final masterBloc = context.read<MasterFormBloc>();
    return Scaffold(
      appBar: CurvedAppBar(
        curvature: Curvature.rightToLeft,
        title: TranslationStrings.role.master.tr(),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: BlocConsumer<MasterFormBloc, MasterFormState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () => null,
              success: (entity) => Modular.to.pushNamed(RouteName.otpPage),
            );
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SemiBoldTitle(
                  title: TranslationStrings.auth.yourData.tr(),
                ),
                const SizedBox(
                  height: 22,
                ),
                //field for collecting name from the user
                StringTextFormField(
                  isFullFilled: state.masterFormEntity.name!.length >= 2,
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
                const SizedBox(
                  height: 17,
                ),
                StringTextFormField(
                  isFullFilled: state.masterFormEntity.surname!.length >= 2,
                  hint: TranslationStrings.auth.surname.tr(),
                  onChanged: (surname) {
                    masterBloc.add(
                      MasterFormEvent.update(
                        updateEvent: UpdateMasterForm.surname(surname: surname),
                      ),
                    );
                  },
                  onErase: () {
                    masterBloc.add(
                      const MasterFormEvent.update(
                        updateEvent: UpdateMasterForm.surname(surname: ''),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 34.55,
                ),
                PhoneFormTextField(
                  isFullFilled:
                      state.masterFormEntity.phoneNumber!.trim().length == 12,
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
                const SizedBox(
                  height: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                    Gender.values.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(bottom: 17),
                      child: GestureDetector(
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
                ),
                Text(
                  TranslationStrings.auth.fillInMasterForm.tr(),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: AppTypography.smallDescription.copyWith(
                    color: Theme.of(context).highlightColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 34.55,
                ),
                AppTextButton(
                  isLoading: state.maybeWhen(
                    orElse: () => false,
                    loading: (entity) => true,
                  ),
                  title: TranslationStrings.auth.confirm.tr(),
                  onPressed:
                      (state.masterFormEntity.phoneNumber!.trim().length ==
                                  12) &&
                              (state.masterFormEntity.surname!.length >= 2) &&
                              (state.masterFormEntity.name!.length >= 2)
                          ? () {
                              masterBloc.add(const MasterFormEvent.submit());
                            }
                          : null,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
