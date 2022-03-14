import 'package:flutter/material.dart';
import 'package:gisanimr_kuis/detail_page.dart';
import 'package:gisanimr_kuis/model/menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Menu Tersedia"),
        ),
        backgroundColor: Color.fromRGBO(255,140,0,100),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var menu = getAllMenu();

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: menu.length,
      itemBuilder: (BuildContext context, int index) {
        return _createCard(menu[index], context);
      },
    );
  }

  Widget _createCard(Menu data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(
              image: data.image,
              name: data.name,
              desc: data.desc,
              price: data.price,
              category: data.category,
              reviewer: data.reviewer,
              sold: data.sold,
            );
          }));
        },
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child : Container(
                  child: Image.network(
                    data.image,
                    fit: BoxFit.fitWidth,
                    height: 400,
                    width: 250,
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: Text(
                      data.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    )),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                    child: Text(
                      data.desc,
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )),
              ),
              Expanded(
                flex: 2,
                child: Container(
                    padding: const EdgeInsets.fromLTRB(130, 30, 0, 0),
                    child: Text(
                      data.category,
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}