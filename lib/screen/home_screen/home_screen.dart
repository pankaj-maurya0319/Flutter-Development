import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget singalProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
          color: Color(0xffd9dad9), borderRadius: BorderRadius.circular(10)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            flex: 2,
            child: Image.network(
                'https://forum.grasscity.com/attachments/13f5bbfd-ddbc-4771-908b-0facdb107c05-jpeg.2505893/')),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Fresh Ganja',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                '50\$/50gm',
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.only(left: 5),
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        //color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(children: [
                      Expanded(
                          child: Text(
                        '50 Gram',
                        style: TextStyle(fontSize: 10),
                      )),
                      Center(
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 20,
                          color: Colors.yellow,
                        ),
                      )
                    ]),
                  )),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        //color: Colors.grey,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8)),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.remove,
                            size: 15,
                          ),
                          Text(
                            '1',
                            style: TextStyle(
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.add,
                            size: 15,
                          )
                        ]),
                  ))
                ],
              )
            ],
          ),
        ))
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffcbcbcd),
      drawer: Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
              radius: 12,
              backgroundColor: Color(0xffd4d181),
              child: Icon(Icons.search, size: 17, color: Colors.black)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
                radius: 12,
                backgroundColor: Color(0xffd4d181),
                child: Icon(Icons.shop, size: 17, color: Colors.black)),
          )
        ],
        backgroundColor: Color(0xffd6b738),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage('assets/vege.jpg')),
              //color: Colors.red,
            ),
            child: Row(children: [
              Expanded(
                flex: 2,
                child: Container(
                  //color: Colors.red,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 130, bottom: 20),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xffd4d181),
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50))),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                              'Vegi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 3,
                                        offset: Offset(3, 3))
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '30% OFF',
                        style: TextStyle(
                            color: Colors.green[500],
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          'On All Vegetables Products',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Herbs Searching'),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fruits Searching'),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Herbs Searching'),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts()
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fruits Searching'),
                Text(
                  'View All',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                singalProducts(),
                singalProducts(),
                singalProducts(),
                singalProducts()
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
