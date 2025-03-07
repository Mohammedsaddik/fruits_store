import 'package:fruits_store/Core/Repos/Product_Repo/Product_repo.dart';
import 'package:fruits_store/Core/Repos/Product_Repo/product_repo_imp.dart';
import 'package:fruits_store/Core/Repos/Pubber_Repo/punner_repo.dart';
import 'package:fruits_store/Core/Repos/Pubber_Repo/punner_repo_imp.dart';
import 'package:fruits_store/Core/Services/data_base_service.dart';
import 'package:fruits_store/Core/Services/fire_base_Auth_service.dart';
import 'package:fruits_store/Core/Services/fire_store_servise.dart';
import 'package:fruits_store/Features/Auth/domain/repos/auth_repo.dart';
import 'package:fruits_store/Features/Auth/domain/repos/auth_repo_imp.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<FirebaseAuthServise>(
    FirebaseAuthServise(),
  );
  getIt.registerSingleton<DataBaseService>(
    FireStoreServise(),
  );

  getIt.registerSingleton<AuthRepo>(
    AuthRepoImp(
      firebaseAuthServise: getIt<FirebaseAuthServise>(),
      dataBaseService: getIt<DataBaseService>(),
    ),
  );
  getIt.registerSingleton<ProductRepo>(
    ProductRepoImp(
      databaseService: getIt<DataBaseService>(),
    ),
  );

  getIt.registerSingleton<PunnerRepo>(
    PunnerRepoImp(
      dataBaseService: getIt<DataBaseService>(),
    ),
  );
}
