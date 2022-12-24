import 'package:flutter/material.dart';
import 'package:split_bill/second_page.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home:const Split(),),
  );
}

class Split extends StatefulWidget {
  const Split({Key? key}) : super(key: key);

  @override
  State<Split> createState() => _SplitState();
}

class _SplitState extends State<Split> {
  @override
  double slider = 0;
  int tip = 0;
  String total = "";
  String tax="";
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                "Split Bill",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            body: Column(
              children: [
                Container(
                  height: 120,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: Color(0xffffb200)),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "$total",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Friends",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "Tax",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "Tip",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "$slider",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "$tax",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "\$$tip",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ],
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
                Text(
                  "How Many Friends ?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Slider(
                    value: slider,
                    onChanged: (value) {
                      setState(() {
                        slider = value;
                      });
                    },
                    min: 0,
                    max: 20,
                    divisions: 20,
                    activeColor: Color(0xffffb200),
                    inactiveColor: Colors.black38,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 75,
                          decoration: BoxDecoration(
                              color: Color(0xffffb200),
                              borderRadius: BorderRadius.circular(7)),
                          child: Padding(
                            padding: const EdgeInsets.all(13),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      tip--;
                                    });
                                  },
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.grey,
                                  child: Icon(Icons.remove),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "TIP",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "$tip",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                FloatingActionButton(
                                  onPressed: () {
                                    setState(() {
                                      tip++;
                                    });
                                  },
                                  foregroundColor: Colors.black,
                                  backgroundColor: Colors.grey,
                                  child: Icon(Icons.add),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Container(
                          height: 75,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(keyboardType: TextInputType.number,
                              onChanged: (value){
                                setState(() {
                                  tax=value;
                                });
                              },
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 2)),
                                label: Text("Tax in %",
                                    style: TextStyle(color: Colors.black)),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(width: 2)),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xffffb200),
                            borderRadius: BorderRadius.circular(7),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              total = total + "1";
                            });
                          },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text("1", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              total = total + "2";
                            });
                          },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text("2", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                        InkWell(onTap: () {
                          setState(() {
                            total=total+"3";
                          });
                        },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text("3", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                        InkWell(onTap: () {
                          setState(() {
                            total=total+"4";
                          });
                        },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text("4", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                        InkWell(onTap: () {
                          setState(() {
                            total=total+"5";
                          });
                        },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text("5", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                        InkWell(onTap: () {
                          setState(() {
                            total=total+"6";
                          });
                        },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text("6", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                        InkWell(onTap: () {
                          setState(() {
                            total=total+"7";
                          });
                        },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text("7", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                        InkWell(onTap: () {
                          setState(() {
                            total=total+"8";
                          });
                        },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text("8", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                        InkWell(onTap: () {
                          setState(() {
                            total=total+"9";
                          });
                        },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text("9", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                        InkWell(onTap: () {
                          setState(() {
                            total=total+".";
                          });
                        },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text(".", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                        InkWell(onTap: () {
                          setState(() {
                            total=total+"0";
                          });
                        },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text("0", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                        InkWell(onTap: () {
                          setState(() {
                            slider = 0;
                            tip = 0;
                            total = "";

                          });
                        },
                          child: Card(
                            elevation: 4.0,
                            child: Center(
                                child: Text("-", style: TextStyle(fontSize: 40))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: InkWell(onTap: () {
                   Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Second(slider,tip,total,tax)),);
                  },
                    child: Card(
                      elevation: 4.0,
                      color: Color(0xff1ea95f),
                      child: Center(
                          child:
                              Text("Split Bill", style: TextStyle(fontSize: 30))),
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
