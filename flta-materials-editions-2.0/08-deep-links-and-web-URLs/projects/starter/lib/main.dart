import 'package:flutter/material.dart';
import 'package:fooderlich/navigation/app_route_parser.dart';
import 'package:provider/provider.dart';
import 'navigation/app_route_parser.dart';
import 'fooderlich_theme.dart';
import 'models/models.dart';
import 'navigation/app_router.dart';

void main() {
  runApp(
    const Kvnmedia(),
  );
}

class Kvnmedia extends StatefulWidget {
  const Kvnmedia({Key? key}) : super(key: key);

  @override
  _KvnmediaState createState() => _KvnmediaState();
}

class _KvnmediaState extends State<Kvnmedia> {
  final _groceryManager = GroceryManager();
  final _profileManager = ProfileManager();
  final _appStateManager = AppStateManager();
  late AppRouter _appRouter;
  final routeParser = AppRouteParser();

  @override
  void initState() {
    _appRouter = AppRouter(
      appStateManager: _appStateManager,
      groceryManager: _groceryManager,
      profileManager: _profileManager,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => _groceryManager),
        ChangeNotifierProvider(
          create: (context) => _appStateManager,
        ),
        ChangeNotifierProvider(
          create: (context) => _profileManager,
        )
      ],
      child: Consumer<ProfileManager>(
        builder: (context, profileManager, child) {
          ThemeData theme;
          if (profileManager.darkMode) {
            theme = FooderlichTheme.dark();
          } else {
            theme = FooderlichTheme.light();
          }
          return MaterialApp.router(
            theme: theme,
            title: 'Kvnmedia',
            backButtonDispatcher: RootBackButtonDispatcher(),
            // 1
            routeInformationParser: routeParser,
            // 2
            routerDelegate: _appRouter,
          );
        },
      ),
    );
  }
}
