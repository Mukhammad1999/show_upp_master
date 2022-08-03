import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'master_form_event.dart';
part 'master_form_state.dart';

class MasterFormBloc extends Bloc<MasterFormEvent, MasterFormState> {
  MasterFormBloc() : super(MasterFormInitial()) {
    on<MasterFormEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
