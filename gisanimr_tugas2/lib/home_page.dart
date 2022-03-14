import 'package:flutter/material.dart';
import 'package:gisanimr_tugas2/detail_page.dart';

import 'model/buku.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Buku Perpus"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var dataBuku = getData;

    return ListView.separated(
      itemBuilder: (context, index) {
        return _createCard(dataBuku[index], context);
      },
      itemCount: dataBuku.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.blue,
          height: 1,
          margin: EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  Widget _createCard(Buku data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(image: data.image, name: data.name, ket: data.ket);
          }));
        },
        child: Container(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Image.network(data.image),
              ),
              Expanded(
                flex: 3,
                child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: Text(data.name)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}