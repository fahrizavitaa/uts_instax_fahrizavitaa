import 'package:flutter/material.dart';
import 'package:uts_fahriza/list.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_fahriza/styleproduct.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
} 

class _HomepageState extends State<HomePage> {
  List<Listproduct> data = [];
  List<Listproduct> dataSearch = [];

  @override
  void initState() {
    data = [
      Listproduct(
          name: "Mint",
          colour: const Color(0xff70b1a1),
          price: "50.00",
          pict: 'assets/InstaxMini7plus_Mint_R.png'),
      Listproduct(
          name: "Blue",
          colour: const Color(0xff77a0c6),
          price: "53.00",
          pict: 'assets/InstaxMini7plus_Blue_R.png'),
      Listproduct(
          name: "Choral",
          colour: const Color(0xffb0463c),
          price: "49.00",
          pict: 'assets/InstaxMini7plus_Choral_R.png'),
      Listproduct(
          name: "Lavender",
          colour: const Color(0xff855f8c),
          price: "55.00",
          pict: 'assets/InstaxMini7plus_Lavender_R.png'),
      Listproduct(
          name: "Pink",
          colour: const Color(0xffcf9496),
          price: "50.00",
          pict: 'assets/InstaxMini7plus_Pink_R.png'),
    ];

    dataSearch = data;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Image.asset('assets/fujifilm_banner.png', height: 20),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                style: const TextStyle(color: Colors.white),
                onChanged: (text) {
                  text = text.toLowerCase();
                  setState(() {
                    data = dataSearch.where((val) {
                      var cariNama = val.name.toLowerCase();
                      return cariNama.contains(text);
                    }).toList();
                  });
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    filled: true,
                    hintStyle: const TextStyle(color: Colors.white),
                    hintText: "Search",
                    fillColor: Colors.black),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return styleproduct(
                    data[index],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}