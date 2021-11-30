import 'package:flutter/material.dart';
import 'package:uts_fahriza/list.dart';
import 'package:flutter/widgets.dart';

import 'detail_product.dart';

// ignore: camel_case_types, must_be_immutable
class styleproduct extends StatelessWidget {
  late Listproduct model;
  styleproduct(this.model, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailProduk(
                        model: model,
                      )),
            );
          },
          child: Container(
            height: 150,
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(right: 30.0, top: 12),
            decoration: BoxDecoration(
              color: model.colour,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Limited Edition', style: TextStyle(color: Colors.white)),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'Instax ',
                      style: const TextStyle(color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Mini " + model.name + " 7+",
                            style: const TextStyle(fontWeight: FontWeight.w800)),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: RichText(
                    text: TextSpan(
                      text: '\$ ',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                      children: <TextSpan>[
                        TextSpan(
                            text: model.price,
                            style: const TextStyle(fontWeight: FontWeight.w900)),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailProduk(model: model)),
                    );
                  },
                  child: Text(
                    'Buy',
                    style: TextStyle(color: model.colour),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // <-- Radius
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.fromLTRB(0, 35, 0, 0),
            alignment: FractionalOffset.centerRight,
            child: Image.asset(model.pict, height: 100)),
      ],
    );
  }
}
