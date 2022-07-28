// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';

class CardListTile extends StatelessWidget {
  const CardListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card ve List Tile'),
      ),
      body: Center(
        //ListView ve SingleChildScrollView bellek dostu yapılar değil.
        //Her bir eleman bellekte yer tuttuğundan dolayı yüksek sayıda eleman olursa
        //bellek performansı açısından problem yaratır.
        child: ListView(
          reverse: true,
          children: [
            Column(
              children: [
                SingleList(),
                SingleList(),
                SingleList(),
                SingleList(),
                SingleList(),
                SingleList(),
                SingleList(),
                SingleList(),
                SingleList(),
                SingleList(),
                SingleList(),
              ],
            ),
            Text('Mehmet'),
            ElevatedButton(
              onPressed: () {},
              child: Text('Button'),
            ),
          ],
        ),
      ),
    );
  }

  //Column varsa ve içinde ki elemanlar
  //ekrana sığmıyorsa SingleChild widgetı kullanarak scroll yapısına çeviririz.
  SingleChildScrollView SingleChildScroll() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleList(),
          SingleList(),
          SingleList(),
          SingleList(),
          SingleList(),
          SingleList(),
          SingleList(),
          SingleList(),
          SingleList(),
          SingleList(),
          SingleList(),
        ],
      ),
    );
  }

  Column SingleList() {
    return Column(
      children: [
        Card(
          color: Colors.blue.shade100,
          shadowColor: Colors.black,
          elevation: 12,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.add)),
            title: Text('Başlık'),
            subtitle: Text('Alt Başlık'),
            trailing: Icon(Icons.alarm),
          ),
        ),
        Divider(
          color: Colors.red,
          thickness: 2,
          height: 10,
          indent: 60,
          endIndent: 60,
        ),
      ],
    );
  }
}
