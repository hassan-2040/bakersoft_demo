import 'package:bakersoft_demo/core/utilities/app_config.dart';
import 'package:bakersoft_demo/core/utilities/app_router.dart';
import 'package:bakersoft_demo/core/utilities/constants.dart';
import 'package:bakersoft_demo/features/splash/presentation/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _slideController;
  late Animation<Offset> _slideRightValue;
  late Animation<Offset> _slideLeftValue;

  @override
  void initState() {
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _slideRightValue =
        Tween(begin: const Offset(3.0, 0.0), end: const Offset(1.0, 0.0))
            .animate(
      CurvedAnimation(
        parent: _slideController,
        curve: Curves.elasticOut,
      ),
    );

    _slideLeftValue =
        Tween(begin: const Offset(-3.0, 0.0), end: Offset.zero).animate(
      CurvedAnimation(
        parent: _slideController,
        curve: Curves.elasticOut,
      ),
    );

    _runAnimation();

    super.initState();
  }

  _runAnimation() async {
    await Future.delayed(const Duration(milliseconds: 300));
    _slideController.forward();
  }

  @override
  void dispose() {
    _slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AppConfig().setRootContext(context);
    return BlocListener<SplashBloc, SplashState>(
      listener: (context, state) {
        state.whenOrNull(
          proceed: (() => Navigator.of(context)
              .pushReplacementNamed(AppRouter.productsListPageRoute)),
        );
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: SizedBox(
          width: AppConfig.screenWidth,
          height: AppConfig.screenHeight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SlideTransition(
                position: _slideLeftValue,
                child: Text(
                  'Bakersoft',
                  style: AppConfig.getTextStyle(
                    context: context,
                    textSize: TextSize.main,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SlideTransition(
                position: _slideRightValue,
                child: Text(
                  'Demo',
                  style: AppConfig.getTextStyle(
                    context: context,
                    textSize: TextSize.large,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
