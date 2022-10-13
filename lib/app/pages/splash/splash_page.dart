import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
          TextField(),
          Button(
             onPressed: (){},
              style: ButtonStyles.instance.yellowButton,
              labelStyle: context.textStyles.textPrimaryFontBold,
              label: 'Salvar'),
          Button.primary(
              width: MediaQuery.of(context).size.width * .9,
              height: 30,
              onPressed: (){},

              label: 'Salvar'),

        ],
      ),),
    );
  }
}
