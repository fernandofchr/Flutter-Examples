import 'package:ddi_phone/domain/entities/user.dart';
import 'package:ddi_phone/domain/usercases/get_user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUser getUser;

  UserBloc(this.getUser) : super(UserInitial());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is GetUserEvent) {
      yield UserLoading();
      try {
        final user = await getUser(event.id);
        yield UserLoaded(user: user);
      } catch (_) {
        yield UserError();
      }
    }
  }
}