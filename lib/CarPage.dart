import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class CarPage extends StatefulWidget {
  final String carName;
  final String image;
  final String price;
  final String color;

  CarPage({this.carName, this.image, this.price, this.color});

  @override
  _CarPageState createState() => _CarPageState(carName, image, price, color);
}

class NewItem {
  bool isExpanded;
  final String header;
  final Widget body;
  final Icon iconpic;

  NewItem(this.isExpanded, this.header, this.body, this.iconpic);
}

List<String> color = [];

class _CarPageState extends State<CarPage> with SingleTickerProviderStateMixin {
  String carName;
  String image;
  String price;
  String color;
  String _buttonName = 'Reveal Price';

  _CarPageState(this.carName, this.image, this.price, this.color);

  void changeText() {
    _buttonName = '₹ ' + price;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222629),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          '$carName',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              '$image',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$carName',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
              thickness: 1,
            ),
            SizedBox(
              height: 15,
            ),
            RaisedButton(
              color: Colors.orange,
              child: Text(
                _buttonName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              onPressed: () {
                setState(() {
                  changeText();
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              width: 170,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'DETAILS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  // decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    Icon(
                      Icons.shutter_speed,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kilometers',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          '11,000 Km',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              trailing: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 8,
                    ),
                    Icon(
                      EvaIcons.droplet,
                      color: Colors.blue,
                      size: 29,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fuel',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Petrol',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            ListTile(
              leading: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    Icon(
                      EvaIcons.calendar,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Year Of Manufacturing',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          '2015',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              trailing: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 8,
                    ),
                    Icon(
                      EvaIcons.person,
                      color: Colors.blue,
                      size: 29,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Owner',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'First Hand',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            ListTile(
              leading: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    Icon(
                      Icons.format_color_fill,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Color',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          color,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              trailing: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 8,
                    ),
                    Icon(
                      Icons.airline_seat_recline_extra,
                      color: Colors.blue,
                      size: 29,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Seats',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          '5',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            ListTile(
              leading: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    Icon(
                      LineIcons.newspaper_o,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Insurance',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'upto Jan 2022',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              trailing: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 8,
                    ),
                    Icon(
                      LineIcons.wrench,
                      color: Colors.blue,
                      size: 29,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Transmission',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Automatic',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17,
            ),
            ListTile(
              leading: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    Icon(
                      LineIcons.car,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Torque',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          '760 Nm',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              trailing: Container(
                height: 120,
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 8,
                    ),
                    Icon(
                      LineIcons.gear,
                      color: Colors.blue,
                      size: 29,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Engine',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          '1955 cc',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
              thickness: 1,
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                'ADDITIONAL FEATURES',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  // decoration: TextDecoration.underline,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Theme.of(context).backgroundColor,
              ),
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                  cardColor: Colors.black12,
                ),
                child: ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      itemsEngine[index].isExpanded =
                          !itemsEngine[index].isExpanded;
                    });
                  },
                  children: itemsEngine.map((NewItem item) {
                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                            leading: item.iconpic,
                            title: Text(
                              item.header,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ));
                      },
                      isExpanded: item.isExpanded,
                      body: item.body,
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
              thickness: 1,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Theme.of(context).backgroundColor,
              ),
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                  cardColor: Colors.black12,
                ),
                child: ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      items[index].isExpanded = !items[index].isExpanded;
                    });
                  },
                  children: items.map((NewItem item) {
                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                            leading: item.iconpic,
                            title: Text(
                              item.header,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ));
                      },
                      isExpanded: item.isExpanded,
                      body: item.body,
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
              thickness: 1,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Theme.of(context).backgroundColor,
              ),
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                  cardColor: Colors.black12,
                ),
                child: ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      itemsExterior[index].isExpanded =
                          !itemsExterior[index].isExpanded;
                    });
                  },
                  children: itemsExterior.map((NewItem item) {
                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                            leading: item.iconpic,
                            title: Text(
                              item.header,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ));
                      },
                      isExpanded: item.isExpanded,
                      body: item.body,
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
              thickness: 1,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Theme.of(context).backgroundColor,
              ),
              margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0),
              child: Theme(
                data: Theme.of(context).copyWith(
                  cardColor: Colors.black12,
                ),
                child: ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      itemsFeatures[index].isExpanded =
                          !itemsFeatures[index].isExpanded;
                    });
                  },
                  children: itemsFeatures.map((NewItem item) {
                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                            leading: item.iconpic,
                            title: Text(
                              item.header,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                              ),
                            ));
                      },
                      isExpanded: item.isExpanded,
                      body: item.body,
                    );
                  }).toList(),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              indent: 10,
              endIndent: 10,
              color: Colors.white,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }

  List<NewItem> itemsEngine = <NewItem>[
    NewItem(
        false, // isExpanded ?
        'Engine',
        // header
        Padding(
          padding: EdgeInsets.all(7.0),
          child: Column(
            children: <Widget>[
              Engine(
                  heading: 'Engine Type',
                  subheading: 'Kryotec 2.0 L Turbocharged'),
              Engine(heading: 'Displacement (cc)', subheading: '1956'),
              Engine(heading: 'Max Power', subheading: '167.67bhp@3750rpm'),
              Engine(heading: 'Max Torque', subheading: '350Nm@1750-2500rpm'),
              Engine(heading: 'No. of cylinder', subheading: '4'),
              Engine(
                heading: 'Turbo Charger',
                icon: Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Engine(
                heading: 'Super Charge',
                icon: Icon(
                  EvaIcons.closeCircleOutline,
                  color: Colors.red,
                ),
              ),
              Engine(heading: 'Drive Type', subheading: 'FWD'),
              Engine(heading: 'Fuel Supply System', subheading: 'CRDI'),
            ],
          ),
        ), // body
        Icon(
          LineIcons.gear,
          color: Colors.red,
        ) // iconPic
        ),
  ];

  List<NewItem> items = <NewItem>[
    NewItem(
        false, // isExpanded ?
        'Interior',
        // header
        Padding(
          padding: EdgeInsets.all(7.0),
          child: Column(
            children: <Widget>[
              Interior(
                'Air-Conditioner',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Interior(
                'Heater',
                Icon(
                  EvaIcons.closeCircleOutline,
                  color: Colors.red,
                ),
              ),
              Interior(
                'Digital Clock',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Interior(
                'Air Bag',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Interior(
                'Height Adjustable Driver Seat',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Interior(
                'Air Bag',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Interior(
                'Vanity Mirror',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ), // body
        Icon(
          Icons.airline_seat_recline_extra,
          color: Colors.red,
        ) // iconPic
        ),
  ];
  List<NewItem> itemsExterior = <NewItem>[
    NewItem(
        false, // isExpanded ?
        'Exterior',
        // header
        Padding(
          padding: EdgeInsets.all(7.0),
          child: Column(
            children: <Widget>[
              Exterior('Length(mm)', '4598'),
              Exterior('Width(mm)', '1894'),
              Exterior('Height(mm)', '1706'),
              Exterior('Wheel Base(mm)', '2741'),
              Exterior('Ground Clearance Unladen(mm)', '205'),
              Exterior('Boot Space(Litres)', '425'),
              Exterior('Adjustable Headlights', 'Yes'),
            ],
          ),
        ), // body
        Icon(
          Icons.local_car_wash,
          color: Colors.red,
        ) // iconPic
        ),
  ];

  List<NewItem> itemsFeatures = <NewItem>[
    NewItem(
        false, // isExpanded ?
        'Features',
        // header
        Padding(
          padding: EdgeInsets.all(7.0),
          child: Column(
            children: <Widget>[
              Features(
                'ABS',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Power Steering',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Power Door Locks',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Power Window Front',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Power Window Rear',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Remote Trunk Opener',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Low Fuel Warning',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Engine Check Warning',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Low Fuel Warning Light',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Engine Check Warning',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Child Safety Lock',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Cup Holder Front',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Cup Holder Back',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Rear AC Vents',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
              Features(
                'Navigation System',
                Icon(
                  Icons.check_circle,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ), // body
        Icon(
          Icons.local_cafe,
          color: Colors.red,
        ) // iconPic
        ),
  ];
}

class Engine extends StatelessWidget {
  final String heading;
  final String subheading;
  final Icon icon;

  Engine({this.heading, this.subheading, this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        alignment: Alignment.centerLeft,
        width: MediaQuery.of(context).size.width / 2 - 40,
        height: 100,
        child: Text(
          heading,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      trailing: icon != null
          ? Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width / 2 - 40,
              height: 100,
              child: icon,
            )
          : Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width / 2 - 40,
              height: 100,
              child: Text(
                subheading,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
    );
  }
}

class Interior extends StatelessWidget {
  final String interiorName;
  final Icon icon;

  Interior(this.interiorName, this.icon);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        alignment: Alignment.centerLeft,
        width: MediaQuery.of(context).size.width / 2,
        height: 100,
        child: Text(
          interiorName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      trailing: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 100,
        child: icon,
      ),
    );
  }
}

class Exterior extends StatelessWidget {
  final String heading;
  final String subheading;

  Exterior(this.heading, this.subheading);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: 100,
        child: Text(
          heading,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      trailing: Container(
        width: MediaQuery.of(context).size.width / 2 - 70,
        height: 100,
        child: Text(
          subheading,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Features extends StatelessWidget {
  final String featureName;
  final Icon icon;

  Features(this.featureName, this.icon);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        alignment: Alignment.centerLeft,
        width: MediaQuery.of(context).size.width / 2,
        height: 100,
        child: Text(
          featureName,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      trailing: Container(
        alignment: Alignment.centerLeft,
        width: MediaQuery.of(context).size.width / 2 - 70,
        height: 100,
        child: icon,
      ),
    );
  }
}
