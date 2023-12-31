import 'package:flutter/material.dart';
import 'package:lab07/themes/theme.dart';

class WidgetCard3 extends StatelessWidget {
  const WidgetCard3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Column(
        children: [
            const ListTile(
            leading: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Icon(Icons.car_crash_rounded, size: 50.0,color:AppTheme.primary),
            ),
            title: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text('Titulo de la tarjeta'),
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                  'Este es texto de ejemplo para poder mostrar una mejor disposicion del texto en una tarjeta'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Procesar'),
                ),
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
