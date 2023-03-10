import 'package:flutter/material.dart';
import 'package:odev4/sayfa_y.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({Key? key}) : super(key: key);

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100.withOpacity(0.9),
      appBar: AppBar(title: const Text("Sayfa X",),),
    body: Center(
    child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaY()));
          },
            child: Text("Y sayfasına git"),),

        ],
      ),
    ),
    );
  }
}