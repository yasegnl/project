import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color.fromARGB(255, 156, 230, 181)),
        
      ),
      
      title: "TO-DO",
      home: Iskele(),
    );
  }
}

class Iskele extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( foregroundColor: Color.fromARGB(255, 192, 86, 206),
                title: Center(child: Text("TO-DO LIST")),
      ),
      body: AnaEkran(),
    );
  }
}

class AnaEkran extends StatefulWidget {
  @override
  _AnaEkranState createState() => _AnaEkranState();
}

class _AnaEkranState extends State<AnaEkran> {
  TextEditingController t1 = TextEditingController(); //textfielddan gelen metni tutacak adı t1
  List yapilacaklar = []; //Boş liste. TextEditingController’ın aldığı metinleri tutması için

  elemanEkle() {
    setState(() {
      yapilacaklar.add(t1.text); //t1den gelen değer eklenir
      t1.clear();
    });
  }

  elemanCikar() {
    setState(() {
      yapilacaklar.remove(t1.text); //t1den gelen çıkartılır
      t1.clear();
    });
  }
@override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              itemCount: yapilacaklar.length,
              itemBuilder: (context, siraNumarasi) => ListTile(
                subtitle: Text("Bugün Yapılacaklar"),
                title: Text(yapilacaklar[siraNumarasi]),
              ),
            ),
          ),
          TextField(  //metin giriş alanı
          decoration: InputDecoration(border: OutlineInputBorder()),
            controller: t1,
          ),
          ElevatedButton(
            onPressed: elemanEkle,
            child: Text("Ekle"),
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 236, 243, 240))),
          ),
          ElevatedButton(
            onPressed: elemanCikar,
            child: Text("Çıkar"),
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 156, 230, 181))),
          ),
        ],
      ),
    );
  }
}