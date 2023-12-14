import 'package:appwrite/appwrite.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:quiz_app/config.dart';
import 'package:quiz_app/features/data/datasource/auth_local.datasource.dart';
import 'package:quiz_app/features/data/datasource/auth_remote.datasource.dart';
import 'package:quiz_app/features/data/repository/auth_repository.dart';
import 'package:quiz_app/features/domain/bloc/auth/auth_bloc.dart';

class DIContainer {
  Client get _client => Client()
      .setEndpoint(Config.endpoint)
      .setProject(Config.projectId)
      .setSelfSigned(status: true);

  Account get _account => Account(_client);

  Databases get _databases => Databases(_client);

  FlutterSecureStorage get _secureStorage => const FlutterSecureStorage();

  AuthLocalDatasource get _authLocalDatasource =>
      AuthLocalDatasource(_secureStorage);

  AuthRemoteDatasource get _authRemoteDatasource =>
      AuthRemoteDatasource(_account, _databases);

  AuthRepository get _authRepository =>
      AuthRepository(_authRemoteDatasource, _authLocalDatasource);

  AuthBloc get authBloc => AuthBloc(_authRepository);
}
