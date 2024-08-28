import 'package:ddi_phone/domain/entities/user.dart';
import 'package:ddi_phone/domain/repositories/user_repository.dart';
import 'package:ddi_phone/insfrastructure/data_sources/user_data_source.dart';

class UserRepositoryImpl implements UserRepository {
 final UserDataSource dataSource;
 UserRepositoryImpl(this.dataSource);
 @override
 Future<User> getUser(String id) async {
 final userModel = await dataSource.fetchUser(id);
 return userModel;
 }
}