import 'package:bakersoft_demo/core/utilities/service_locator.dart';
import 'package:bakersoft_demo/multi_provider_widget.dart';
import 'package:bakersoft_demo/core/utilities/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProviderWidget(
      child: MaterialApp(
        title: 'Bakersoft Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.lime,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
            )),
        initialRoute: AppRouter.splashPageRoute,
        onGenerateInitialRoutes: AppRouter.generateInitialRoute,
        onGenerateRoute: AppRouter.generateRoute,
      ),
    );
  }
}
