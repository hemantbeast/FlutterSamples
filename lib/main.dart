import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:news/cubits/news/news_cubit.dart';
import 'package:news/services/news_service.dart';
import 'package:news/ui/news_page.dart';
import 'package:news/utils/bloc_observer.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final storage = await HydratedStorage.build(
    storageDirectory: kIsWeb ? HydratedStorage.webStorageDirectory : await getTemporaryDirectory(),
  );
  Bloc.observer = NewsBlocObserver();
  HydratedBlocOverrides.runZoned(
    () => runApp(
      RepositoryProvider(
        create: (context) => NewsService(),
        child: const MyApp(),
      ),
    ),
    storage: storage,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(RepositoryProvider.of<NewsService>(context)),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const NewsPage(),
      ),
    );
  }
}
