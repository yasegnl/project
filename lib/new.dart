import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: AppBar(title: Center(
            child: Column(
                children: [Text('Merhaba Dünya'), Text('Merhaba Yasemin'), ElevatedButton(onPressed: () {}, child: const Text('bana dokun')) ])),
      ),
    ),
  ));
  /*runnapp bir fonksiyon ve parametre olarak içine bir widget alıyor buradaki widget fluuter material içinden geliyor
 normalde buraya istediğimiz widget verebiliriz ama başlangıç olduğuğu için materialapp vermemiz gerekiyor
 materialapp , import yazdığımız bölgeden geliyor material appi koyduğumuz zaman artık ortaya bir mobil uyg çıkıyor
 home diye bir parametresi var ve buraya yine bir widget veriliyor. ben bunu scafold olmadan yazınca kötü bir text
 oluyor home nesnesine scafeold koyunca daha düzenli bir görünüm elde ediyorum çünkü sacefol içinde googleın
 materyal dizaynı ile ilgili bütün kalıplar var. bu scaffoldun body nesnesine text i veriyoruz daha sonra mesela ben 
 yazıyı ortaya yazdırmak istiyorum body nesnesinin içine center ekliyorum centerın da chil diye bir nesnesi var.
 böyle görüldüğü gibi ben iç içe yazarak yeni özellikler ekleyebiliyorum. Mesela column widgetı ile yazdığım şeyleri 
 alt alta listeyebilirim. coumn widgetı de children nesnesine sahip ve ben burda bir list oluşturmalıyım 
 çünkü birden fazla şey yazmalıyım içine. Eğer yan yana yazmak istersem row yazmalıyım.*/
}
