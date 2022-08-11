import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:master_app/app/index/index.dart';
import 'package:master_app/features/auth/presentation/controller/bloc/master_form_bloc.dart';
import 'package:master_app/features/auth/presentation/widgets/phone_form_text_field.dart';
import 'package:master_app/features/auth/presentation/widgets/string_form_erase_button.dart';

class MasterFormRegistration extends StatelessWidget {
  const MasterFormRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    final masterBloc = context.read<MasterFormBloc>();
    return Scaffold(
      appBar: CurvedAppBar(
        curvature: Curvature.rightToLeft,
        title: 'master'.tr(),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: BlocBuilder<MasterFormBloc, MasterFormState>(
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SemiBoldTitle(
                    title: 'your_data'.tr(),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  //field for collecting name from the user
                  StringTextFormField(
                    isFullFilled: state.masterFormEntity.name!.length >= 2,
                    hint: 'name'.tr(),
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
                    hint: 'surname'.tr(),
                    onChanged: (surname) {
                      masterBloc.add(
                        MasterFormEvent.update(
                          updateEvent:
                              UpdateMasterForm.surname(surname: surname),
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
                  const PhoneFormTextField(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
