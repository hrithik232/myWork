import 'package:flutter/material.dart';

class SellCar extends StatefulWidget {
  @override
  _SellCarState createState() => _SellCarState();
}

int currentIndex = 0;

class _SellCarState extends State<SellCar> with SingleTickerProviderStateMixin {
  TabController _tabController;

  List<bool> _isDisabled = [false, true, true, true, true];

  onTap() {
    if (_isDisabled[_tabController.index]) {
      int index = _tabController.previousIndex;
      setState(() {
        _tabController.index = index;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 5);
    _tabController.addListener(onTap);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222629),
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Color(0xFF222629),
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.label,
          indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.redAccent),
          tabs: [
            Column(
              children: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '1',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    'Brand',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    'Model',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    'Year',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '4',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    'Variant',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70,
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '5',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    'State',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          SingleChildScrollView(
            child: Container(
              height: 600,
              child: ListView(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Popular Brands',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(
                    indent: 16,
                    endIndent: 16,
                    color: Colors.white70,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  popBrand(context, 'Maruti Suzuki', 'Hyundai'),
                  SizedBox(
                    height: 20,
                  ),
                  popBrand(context, 'Honda', 'Mahindra'),
                  SizedBox(
                    height: 20,
                  ),
                  popBrand(context, 'Tata', 'Toyota'),
                  SizedBox(
                    height: 20,
                  ),
                  popBrand(context, 'Ford', 'Renault'),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Other Brands',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Divider(
                    indent: 16,
                    endIndent: 16,
                    color: Colors.white70,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  otherBrand('Acura'),
                  otherBrand('Alpha Romeo'),
                  otherBrand('Aston Martin'),
                  otherBrand('Audi'),
                  otherBrand('Bentley'),
                ],
              ),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: SingleChildScrollView(
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _isDisabled[2] = false;
                          _tabController.animateTo(2);
                          _tabController.index = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'Model Name',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Divider(
                            indent: 16,
                            endIndent: 16,
                            color: Colors.white70,
                            thickness: 1,
                          ),
                          ModelName('City'),
                          ModelName('Civic'),
                          ModelName('Jazz'),
                          ModelName('Brio'),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: SingleChildScrollView(
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _isDisabled[3] = false;
                          _tabController.animateTo(3);
                          _tabController.index = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'Year',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Divider(
                            indent: 16,
                            endIndent: 16,
                            color: Colors.white70,
                            thickness: 1,
                          ),
                          YearName('2017'),
                          YearName('2018'),
                          YearName('2019'),
                          YearName('2020'),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: SingleChildScrollView(
                  child: Container(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _isDisabled[4] = false;
                          _tabController.animateTo(4);
                          _tabController.index = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Text(
                              'Variant',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Divider(
                            indent: 16,
                            endIndent: 16,
                            color: Colors.white70,
                            thickness: 1,
                          ),
                          VariantName('CXI'),
                          VariantName('VXI'),
                          VariantName('DXI'),
                          VariantName('LXI'),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          ListView(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Registration State',
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Divider(
                          indent: 16,
                          endIndent: 16,
                          color: Colors.white70,
                          thickness: 1,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StateName('DL'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                            ),
                            StateName('MA'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                            ),
                            StateName('TN'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            StateName('AP'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                            ),
                            StateName('HP'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                            ),
                            StateName('JK'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  InkWell StateName(String stateName) {
    return InkWell(
      onTap: () {
        setState(() {
          _isDisabled[4] = false;
          _tabController.animateTo(4);
          _tabController.index = 4;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(1)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            stateName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }

  Container otherBrand(String otherName) {
    return Container(
      child: InkWell(
        onTap: () {
          setState(() {
            _isDisabled[1] = false;
            _tabController.animateTo(1);
            _tabController.index = 1;
          });
        },
        child: Column(
          children: [
            ListTile(
              leading: Text(
                otherName,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                ),
              ),
            ),
            Divider(
              indent: 16,
              endIndent: 16,
              color: Colors.white38,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }

  Container popBrand(
      BuildContext context, String leadingCarName, String trailingCarName) {
    return Container(
      child: ListTile(
        leading: InkWell(
          onTap: () {
            setState(() {
              _isDisabled[1] = false;
              _tabController.animateTo(1);
              _tabController.index = 1;
            });
          },
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
            )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                leadingCarName,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
        trailing: InkWell(
          onTap: () {
            setState(() {
              _isDisabled[1] = false;
              _tabController.animateTo(1);
              _tabController.index = 1;
            });
          },
          child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width / 2.5,
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.white,
            )),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                trailingCarName,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ModelName extends StatelessWidget {
  final String modelName;

  ModelName(this.modelName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(
            modelName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ),
        Divider(
          indent: 16,
          endIndent: 16,
          color: Colors.white38,
          thickness: 1,
        ),
      ],
    );
  }
}

class YearName extends StatelessWidget {
  final String yearName;

  YearName(this.yearName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(
            yearName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ),
        Divider(
          indent: 16,
          endIndent: 16,
          color: Colors.white38,
          thickness: 1,
        ),
      ],
    );
  }
}

class VariantName extends StatelessWidget {
  final String variant;

  VariantName(this.variant);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(
            variant,
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
            ),
          ),
        ),
        Divider(
          indent: 16,
          endIndent: 16,
          color: Colors.white38,
          thickness: 1,
        ),
      ],
    );
  }
}
