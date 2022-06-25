import 'package:flutter/material.dart';
import 'package:snackbar_custom_renan_ledo/app/core/widget/snackbar_custom_glass/snackbar_custom_glass.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR49O9O8Cl0Z0eZiTW6BO-aXfFByE_aXHN6Q&usqp=CAU',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('Snackbar Personalizado'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: SnackBarCustomGlass(
                    titulo: 'Titulo Snackbar',
                    descricao:
                        'Descrição total do snackbar Descrição total do snackbar Descrição total do snackbar ',
                    isAction: true,
                    onPressedAction: () {
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                    labelAction: 'desfazer',
                    colorBg: Colors.white,
                  ),
                  behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  duration: const Duration(seconds: 3),
                ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
