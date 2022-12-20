import 'package:flutter/material.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  
  Future<bool> geriTusu(BuildContext context) async { //sistemin navigation tuşunu manipule etmek için Future ile metod oluşturduk.
    print("Nav. geri tuşu tıklandı..");
    Navigator.of(context).popUntil((route) => route.isFirst); //anasayfaya geri dönüldü.
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200.withOpacity(0.5), //arkaplana soft bi grilik verdik.
      appBar: AppBar(title: const Text("Sayfa Y",),
      leading: IconButton(onPressed: (){
        Navigator.of(context).popUntil((route) => route.isFirst);
      },
          icon: const Icon(Icons.arrow_back)),
      ),
      body: WillPopScope( onWillPop: () => geriTusu(context),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left : 30.0,right: 30.0),
              child: Text("Geri tuşu ile direkt anasayfaya dönebilirsiniz.",style: TextStyle(fontSize: 26),textAlign: TextAlign.center,),
            ),
          ],
        ),
    ),
      ),
    );
  }
}