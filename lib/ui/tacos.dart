import 'package:flutter/material.dart';
import 'package:shekinah/data/data.dart';
import 'package:shekinah/ui/oferta_widget.dart';

class Taco extends StatefulWidget {
  const Taco({Key? key}) : super(key: key);

  @override
  State<Taco> createState() => _TacoState();
}

class _TacoState extends State<Taco> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,

      children: tacos.map((cafe) {
        return OfertaWidget(oferta: cafe,);

      }).toList(),
);}
}
