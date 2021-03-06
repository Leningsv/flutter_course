import 'package:adv_cubit/bloc/user/user_cubit.dart';
import 'package:adv_cubit/pages/page1_page.dart';
import 'package:adv_cubit/pages/page2_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => new UserCubit())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        initialRoute: 'page1',
        routes: {'page1': (_) => Page1Page(), 'page2': (_) => Page2Page()},
      ),
    );
  }
}
