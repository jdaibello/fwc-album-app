import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/styles/button_styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyles.instance.primaryButton,
              child: const Text('Salvar'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyles.instance.primaryOutlineButton,
              child: const Text('Salvar'),
            ),
            const TextField(),
          ],
        ),
      ),
    );
  }
}
