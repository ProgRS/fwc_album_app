import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/styles/button_styles.dart';
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Theme(
        data: ThemeData(
            appBarTheme: AppBarTheme(backgroundColor: Colors.white,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: Colors.black
            ),
            titleTextStyle: TextStyle(color:  Colors.black)
            ),

        ),
      child: Scaffold(
      //backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Splash Page'),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
            onPressed: (){},
            style: ButtonStyles.instance.primaryButton,
            child: Text('Salvar'),
      ),
            OutlinedButton(
              onPressed: (){},
              style: ButtonStyles.instance.primaryOutlineButton,
              child: Text('Salvar'),
            ),
          ],
        ),),
      ),
    );
  }
}
