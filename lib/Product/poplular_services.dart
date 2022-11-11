import 'package:balsam/AppUtils/ColorConstants.dart';
import 'package:flutter/material.dart';

class ProductService extends StatelessWidget {
  ProductService({Key? key}) : super(key: key);
  List<String> name = [
    'vase',
    'table',
    'vase',
    'table',
    'vase',
    'table',
    'vase',
    'table'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBlueColor,
        appBar: AppBar(
          backgroundColor: lightBlueColor,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text('Product Services',
              style: TextStyle(color: Colors.black)),
          elevation: 0.0,
          actions: const [
            Icon(
              Icons.shopping_cart,
              color: Colors.black,
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 1 / 1.2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            shrinkWrap: true,
            itemCount: name.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                width: 180,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: [
                      const Align(
                          alignment: Alignment.centerRight,
                          child: Icon(Icons.favorite_border)),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.pink.shade100),
                        height: 120,
                        width: 150,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(name[index]),
                          Row(
                            children: [
                              Icon(Icons.star),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('(212 views)'),
                              ),
                            ],
                          ),
                          Text("36.00",
                              style:
                                  TextStyle(color: Colors.red, fontSize: 25)),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )));
  }
}
