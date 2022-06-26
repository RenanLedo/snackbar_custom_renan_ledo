# CustomSnackbarGlass
 Uma snackbak em flutte personalizada com efeito vidro, totalmente customizada com tiitulo descrição e actions
 
<p align="center">
  <img width="250" src="https://ledotec.com.br/wp-content/uploads/2022/06/custom-snackbar-glass.gif">
 <img width="250" src="https://ledotec.com.br/wp-content/uploads/2022/06/Android-Emulator-Pixel_5_API_30_5554-2022-06-25-20-36-29.gif">
 <img width="250" src="https://ledotec.com.br/wp-content/uploads/2022/06/Android-Emulator-Pixel_5_API_30_5554-2022-06-25-20-37-22.gif">
</p>
 
 
## Como usar? 

### Primeiro:
Crie uma pasta no seu projeto flutter onde achar melhor (recomendo criar no core da aplicação uma vez que será utilizado por todo o projeto), o nome da pasta fica seu critério, mas caso queira basta copiar a pasta **snackbar_custom_glass** nosso projeto

<p align="center">
  <img width="350" src="https://ledotec.com.br/wp-content/uploads/2022/06/pastas.png">
</p>

### Para usar:
Sempre que precisar chamar uma snackbar, ScaffoldMessenger.of(context).showSnackBar(SnackBar( **Aqui você chama o nosso snackbar personalizado 'SnackBarCustomGlass'))

### Copie e cole o codigo abaixo e mude apenas os parâmetros necessários:

```
ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: SnackBarCustomGlass(
                    titulo: 'Titulo Snackbar',
                    descricao:
                        'Descrição total do snackbar Descrição total do snackbar Descrição total do snackbar ',
                    isAction: true,
                    onPressedAction: () {
                    // aqui vai a função do botão action da snack, no momento esta apenas fechando a snackbar
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    },
                    labelAction: 'desfazer',
                    colorBg: Colors.white,
                  ),
                  // o behavior irá alterar a animação uma vez que ele sempre estará em floating 
                  behavior: SnackBarBehavior.floating,
                  
                  // deixe o backgrounde sem transparente como ja está
                  backgroundColor: Colors.transparent,
                  
                  //deixe o elevation sempre em 0
                  elevation: 0,
                  
                  //altere a duração em segundos pra qualquer valor
                  duration: const Duration(seconds: 3),
                ));
```

## Não há necessidade de modificar nada da pasta: snackbar_custom_glass

# Obrigado e caso queira contribuir fique a vontade.
