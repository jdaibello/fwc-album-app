import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:fwc_album_app/app/core/rest/custom_dio.dart';
import 'package:fwc_album_app/app/core/ui/theme/theme_config.dart';
import 'package:fwc_album_app/app/pages/auth/login/login_page.dart';
import 'package:fwc_album_app/app/pages/home/home_page.dart';
import 'package:fwc_album_app/app/pages/splash/splash_route.dart';
import 'package:fwc_album_app/app/repositories/auth/auth_repository.dart';
import 'package:fwc_album_app/app/repositories/auth/auth_repository_impl.dart';

class FwcAlbumApp extends StatelessWidget {
  const FwcAlbumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i())),
      ],
      child: MaterialApp(
        title: 'FIFA World Cup Album',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => const SplashRoute(),
          '/auth/login': (_) => const LoginPage(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
