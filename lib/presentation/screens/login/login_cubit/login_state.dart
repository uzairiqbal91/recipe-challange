abstract class LoginState  {
  const LoginState();
}

class LoginInitial extends LoginState {
  @override
  Object get props => [];
}

class LoginLoading extends LoginState {
  @override
  Object get props => [];
}


class LoginSuccess extends LoginState {
  @override
  Object get props => [];
}


class LoginFailure extends LoginState {
  @override
  Object get props => [];
}