import 'package:ddi_phone/insfrastructure/data_sources/user_data_source.dart';
import 'package:ddi_phone/insfrastructure/repositories/user_repository_impl.dart';
import 'package:ddi_phone/presentation/bloc/user_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
/* import 'package:ddi_phone/presentation/bloc/user_bloc.dart'; */
import 'package:equatable/equatable.dart';
import 'package:ddi_phone/domain/usercases/get_user.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: BlocProvider(
        create: (context) => UserBloc(
          GetUser(
            UserRepositoryImpl(
              UserDataSource('https://api.example.com'),
            ),
          ),
        ),
        child: UserPage(),
      ),
    );
  }
}

class UserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<UserBloc>(context).add(GetUserEvent('1'));
            },
            child: Text('Load User'),
          ),
          BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserInitial) {
                return Text('Press the button to load user');
              } else if (state is UserLoading) {
                return CircularProgressIndicator();
              } else if (state is UserLoaded) {
                return Text('User: ${state.user.name}');
              } else if (state is UserError) {
                return Text('Failed to load user');
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
