import 'package:car_2_go/CarPage.dart';
import 'dart:async';
import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:http/http.dart' as http;

List<String> make = [];
List<String> model = [];
List<String> price = [];
List<String> color = [];
List<String> imageCar = [];

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  void initState() {
    super.initState();
    this.getData();
  }

  Future<String> getData() async {
    try {
      var response = await http.get(
        Uri.encodeFull(
          'https://carstogo.herokuapp.com/api/vehicles',
        ),
        headers: {
          "Accept": "application/json",
          'Content-Type': 'application/json;charset=UTF-8',
          'Charset': 'utf-8'
        },
        // headers: data
      );
      var datas;
      if (response.body.isNotEmpty) {
        datas = json.decode(response.body);
      }
      print(datas);
      datas.forEach((result) => {
            print(
              result['make'] + 'model' + result['model'],
            ),
            make.add(
              result['make'],
            ),
            model.add(
              result['model'],
            ),
            price.add(
              result['price'],
            ),
            color.add(
              result['color'],
            ),
            imageCar.add(
              result['imageUrl'],
            ),
          });
      print(imageCar.toString());
      print(make[2]);
    } catch (e) {
      print(e);
    }
    return 'success';
  }

  @override
  Widget build(BuildContext context) {
    getData();
    print('clear');
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return SingleChildScrollView(
              child: Container(
                color: Color(0xFF1D1D1F),
                child: Column(
                  children: [
                    Container(
                      height: 270,
                      color: Color(0xFF222629),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text(
                              'RECOMENDED',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Bodoniflf',
                                // fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              aspectRatio: 2.0,
                              enlargeCenterPage: true,
                            ),
                            items: imageCar
                                .map(
                                  (item) => FutureBuilder(
                                    future: http.get(
                                        'https://carstogo.herokuapp.com/api/vehicles'),
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.done) {
                                        return Container(
                                          height: 500,
                                          margin: EdgeInsets.all(5.0),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5.0)),
                                            child: InkWell(
                                              onTap: () {
                                                print(make.toString() + "here");
                                                pushNewScreen(
                                                  context,
                                                  screen: CarPage(
                                                    carName: make[imageCar
                                                            .indexOf(item)] +
                                                        ' ' +
                                                        model[imageCar
                                                            .indexOf(item)],
                                                    image: imageCar[0],
                                                    price: price[
                                                        imageCar.indexOf(item)],
                                                    color: color[
                                                        imageCar.indexOf(item)],
                                                  ),
                                                  withNavBar:
                                                      false, // OPTIONAL VALUE. True by default.
                                                  pageTransitionAnimation:
                                                      PageTransitionAnimation
                                                          .cupertino,
                                                );
                                              },
                                              child: Container(
                                                height: 300,
                                                child: Stack(
                                                  children: <Widget>[
                                                    Image.network(
                                                      item,
                                                      fit: BoxFit.cover,
                                                      width: 1000.0,
                                                    ),
                                                    Positioned(
                                                      bottom: 8.0,
                                                      left: 0.0,
                                                      right: 0.0,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 5.0,
                                                                horizontal:
                                                                    10.0),
                                                        child: Text(
                                                          make[imageCar.indexOf(
                                                                  item)] +
                                                              ' ' +
                                                              model[imageCar
                                                                  .indexOf(
                                                                      item)],
                                                          style: TextStyle(
                                                            color: Colors.red,
                                                            fontSize: 20.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      } else {
                                        return Text('Loading...');
                                      }
                                    },
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 220,
                      margin: EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFF222629),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'RAINING SALES',
                            style: TextStyle(
                              color: Colors.white,
                              // fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          CarouselSlider.builder(
                            options: CarouselOptions(
                              aspectRatio: 2.0,
                              enlargeCenterPage: false,
                              viewportFraction: 1,
                            ),
                            itemCount: (imageCar.length / 2).round(),
                            itemBuilder: (context, index) {
                              final int first = index * 2;
                              final int second = first + 1;
                              return Row(
                                children: [first, second].map((idx) {
                                  return Expanded(
                                    child: Container(
                                      height: 160,
                                      width: 140,
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 0,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: <Widget>[
                                          Column(
                                            children: [
                                              InkWell(
                                                child: Image.network(
                                                  imageCar[idx],
                                                  fit: BoxFit.fitHeight,
                                                  height: 100,
                                                  width: 140,
                                                ),
                                                onTap: () {
                                                  getData();
                                                  pushNewScreen(
                                                    context,
                                                    screen: CarPage(
                                                      carName: make[idx] +
                                                          ' ' +
                                                          model[idx],
                                                      image: imageCar[idx],
                                                      price: price[idx],
                                                      color: color[idx],
                                                    ),
                                                    withNavBar: false,
                                                    // OPTIONAL VALUE. True by default.
                                                    pageTransitionAnimation:
                                                        PageTransitionAnimation
                                                            .cupertino,
                                                  );
                                                },
                                              ),
                                              Container(
                                                padding: EdgeInsets.all(8),
                                                width: 136,
                                                height: 35,
                                                color: Color(0xFF383C3F),
                                                child: Text(
                                                  '${make.elementAt(idx)} ${model[idx]}',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(5),
                                            color: Colors.greenAccent[400],
                                            child: Text(
                                              '10% OFF',
                                              style: TextStyle(
                                                color: Colors.black87,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'RECENTLY ADDED',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    for (var i = 0; i < make.length; i++)
                      Column(
                        children: [
                          recentlyAdded(
                            context,
                            make[i].toString(),
                            model[i].toString(),
                            price[i].toString(),
                            color[i].toString(),
                            imageCar[i].toString(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            indent: 20,
                            endIndent: 20,
                            color: Colors.white54,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            );
          } else {
            return Text('Loading...');
          }
        });
  }

  Container recentlyAdded(BuildContext context, String carName, String carModel,
      String price, String color, String imageCar) {
    return Container(
      height: 110,
      child: InkWell(
        onTap: () {
          pushNewScreen(
            context,
            screen: CarPage(
              carName: carName + ' ' + carModel,
              image: imageCar,
              price: price,
              color: color,
            ),
            withNavBar: false, // OPTIONAL VALUE. True by default.
            pageTransitionAnimation: PageTransitionAnimation.cupertino,
          );
        },
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Container(
              height: 100,
              width: 150,
              child: Image.network(
                imageCar,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$carName $carModel',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Manufacturing Year : 2017',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 30,
                  width: 200,
                  color: Colors.greenAccent[400],
                  child: Text(
                    '₹30,00,000',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
