import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/core/ui/helpers/loader.dart';
import 'package:fwc_album_app/app/core/ui/helpers/messages.dart';
import 'package:fwc_album_app/app/core/ui/styles/button_styles.dart';
import 'package:fwc_album_app/app/core/ui/styles/colors_app.dart';
import 'package:fwc_album_app/app/core/ui/styles/text_styles.dart';
import 'package:fwc_album_app/app/core/ui/widgets/button.dart';
import 'package:fwc_album_app/app/core/ui/widgets/rounded_button.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with Loader<SplashPage>, Messages<SplashPage> {
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
          onPressed: () async {
            showLoader();
           await Future.delayed(Duration(seconds: 2));
           hideLoader();
          },
          style: ButtonStyles.instance.primaryButton,
          child: Text('Salvar'),
    ),
          OutlinedButton(
            onPressed: (){
                showError('Erro no botão outline');
            },
            style: ButtonStyles.instance.primaryOutlineButton,
            child: Text('Salvar'),
          ),
          TextField(),
          Button(
             onPressed: (){
               showInfo('Info no botão outline');
             },
              style: ButtonStyles.instance.yellowButton,
              labelStyle: context.textStyles.textPrimaryFontBold,
              label: 'Salvar'),
          Button.primary(
              width: MediaQuery.of(context).size.width * .9,
              height: 30,
              onPressed: (){
                    showSuccess('Success no botão Outline');
              },
              label: 'Salvar'),
              RoundedButton(
                  icon: Icons.add,
                  onPressed: (){}
              )

        ],
      ),),
    );
  }
}
