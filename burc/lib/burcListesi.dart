import 'package:burc/burcWidget.dart';
import 'package:burc/data/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:burc/model/burc.dart';
import 'package:burc/data/strings.dart';
class BurcListesi extends StatelessWidget {
  late List<Burclar> tumBurclar;
  
 BurcListesi()
 {
  tumBurclar=burclariHazirla();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Burç Listesi"),),
      body: ListView.builder(itemBuilder: (context,index){
        return BurcWidget(istenilenBurc: tumBurclar[index]);}, itemCount: tumBurclar.length,)
    );
  }
}

List<Burclar> burclariHazirla() {
  List<Burclar> gecici=[];

  for(int i=0; i<12; i++)
  {
    var _burcAdi=Strings.BURC_ADLARI[i];
    var _burcTarihi=Strings.BURC_TARIHLERI[i];
    var _burcDetayi=Strings.BURC_GENEL_OZELLIKLERI[i];
    var _kucukResim=Strings.BURC_ADLARI[i].toLowerCase()+"${i+1}.png";
    var _buyukResim=Strings.BURC_ADLARI[i].toLowerCase()+"_buyuk${i+1}.png";
    Burclar burc=Burclar(_burcAdi, _burcTarihi, _burcDetayi, _kucukResim, _buyukResim);
    gecici.add(burc);
  }
  return gecici;
}

