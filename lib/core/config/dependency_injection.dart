
import 'package:get_it/get_it.dart';
import 'package:avymart/core/services/auth_service.dart';
import 'package:avymart/core/services/firestore_service.dart';
import 'package:avymart/core/services/storage_service.dart';

final GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {
  serviceLocator.registerLazySingleton(() => AuthService());
  serviceLocator.registerLazySingleton(() => FirestoreService());
  serviceLocator.registerLazySingleton(() => StorageService());
}
