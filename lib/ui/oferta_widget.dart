import 'package:flutter/material.dart';

import 'package:eltacoloco/models/oferta.dart';
import 'package:eltacoloco/ui/colors.dart';

import 'detalle_oferta.dart';

class OfertaWidget extends StatelessWidget {
  const OfertaWidget({
    Key? key,
    required this.oferta,
  }) : super(key: key);

  final Oferta oferta;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetalleOferta(
                oferta: oferta,
              ),
            ));
      },
      child: Container(
        width: 400.0,
        height: 400.0,
        child: Stack(
          children: [
            Image(image: AssetImage(oferta.urlImage), fit: BoxFit.cover),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                color: Colors.white.withOpacity(0.5),
                child: Text(
                  '${oferta.nombre}: ${oferta.precio}',
                  style: TextStyle(color: lightColorScheme.onPrimaryContainer),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
