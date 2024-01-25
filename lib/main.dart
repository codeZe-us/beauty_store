import 'package:beauty_store/features/presentation/logic/limit_product/lilit_product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/services/service_locator.dart';
import 'features/presentation/logic/category_bloc/category_bloc.dart';
import 'features/presentation/logic/product_bloc/product_bloc.dart';
import 'features/presentation/pages/bottom_nav/bottom_nav.dart';

void main() {
  ServiceLocator.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AllCategoriesBloc>(
          create: (context) => AllCategoriesBloc(),
        ),
        BlocProvider<HomePopularProductBloc>(
          create: (context) => HomePopularProductBloc(),
        ),
        BlocProvider<AllProductBloc>(
          create: (context) => AllProductBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      ),
    );
  }
}
