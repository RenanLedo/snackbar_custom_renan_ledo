import 'package:flutter/material.dart';

import 'glassmorphismo.dart';

class SnackBarCustomGlass extends StatelessWidget {
  final String titulo;
  final String descricao;
  final Color colorTitulo;
  final Color colorDescricao;
  final Color colorAction;
  final Color colorBg;
  final String labelAction;
  final Function()? onPressedAction;
  final bool isAction;
  const SnackBarCustomGlass({
    Key? key,
    required this.titulo,
    required this.descricao,
    this.colorTitulo = Colors.black,
    this.colorDescricao = Colors.black,
    this.colorAction = Colors.black,
    this.colorBg = Colors.white,
    this.labelAction = '',
    this.onPressedAction,
    required this.isAction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      color: colorBg,
      child: SizedBox(
        height: 90,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      titulo,
                      style: TextStyle(
                          fontSize: 18,
                          color: colorTitulo,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      descricao,
                      style: TextStyle(
                        fontSize: 12,
                        color: colorDescricao,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              isAction ? const VerticalDivider() : const SizedBox(),
              isAction
                  ? TextButton(
                      onPressed: onPressedAction,
                      child: Text(
                        labelAction,
                        style: TextStyle(color: colorAction),
                      ))
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
