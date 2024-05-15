import 'package:flutter_bloc/flutter_bloc.dart';

class AppObserver extends BlocObserver {
  @override
  void onCreate(BlocBase<dynamic> bloc) {
    super.onCreate(bloc);
    print('onCreate $bloc');
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    print('onEvent $bloc $event');
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    print('onChange $bloc $change');
    super.onChange(bloc, change);
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    print('onTransition $bloc $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    print('onError $bloc $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    print('onClose $bloc');
    super.onClose(bloc);
  }
}
