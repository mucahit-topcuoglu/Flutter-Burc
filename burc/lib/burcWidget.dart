import 'dart:html';

import 'package:burc/burc_detay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:burc/model/burc.dart';

class BurcWidget extends StatelessWidget {
  final Burclar istenilenBurc;
   BurcWidget({required this.istenilenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle=Theme.of(context).textTheme;

    return Card(
      child: ListTile(
        onTap: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (detayContext)=>BurcDetay(secilenBurc: istenilenBurc)));
        },
        leading: CircleAvatar(child: Image.asset("images/"+istenilenBurc.kucukResim)),
        title: Text(istenilenBurc.burcAdi, style: myTextStyle.headline6),
        subtitle: Text(istenilenBurc.burcTarihi, style: myTextStyle.subtitle2,),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.pink,),
      ),
    );
  }
}