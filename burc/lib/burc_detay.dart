import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:burc/model/burc.dart';

class BurcDetay extends StatelessWidget {
  final Burclar secilenBurc;
  BurcDetay({required this.secilenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi+" Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                "images/" + secilenBurc.buyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: SingleChildScrollView(
                  child: Text(secilenBurc.burcDetayi, style: Theme.of(context).textTheme.subtitle1,),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
