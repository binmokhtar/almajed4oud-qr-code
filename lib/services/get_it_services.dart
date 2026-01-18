import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'get_it_services.config.dart';

final getIt = GetIt.instance;

@injectableInit
void dependencies() => getIt.init();
  
