import 'package:fruits_store/Core/Services/fire_base_Auth_service.dart';
import 'package:fruits_store/Features/Auth/domain/repos/auth_repo.dart';
import 'package:fruits_store/Features/Auth/domain/repos/auth_repo_imp.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthServise>(
    FirebaseAuthServise(),
  );

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImp(
      firebaseAuthServise: getIt<FirebaseAuthServise>(),
    ),
  );
}
