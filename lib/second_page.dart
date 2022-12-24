import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  double slider1;
  int tip1;
  String total1;
  String tax1;
  Second(this.slider1, this.tip1, this.total1, this.tax1);
  @override
  State<Second> createState() => _SecondState();
}


class _SecondState extends State<Second> {
  num result=0;
  @override
  void initState() {
    super.initState();
    div();
  }
  void div()
  {
    num ta=num.parse(widget.total1)*num.parse(widget.tax1)/100;
    num bill=(num.parse(widget.total1)+ta+widget.tip1)/(widget.slider1);
    setState(() {
      result=bill;
      print(result);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Result",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
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
                          "Equally Divided",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "${result.toStringAsFixed(3)}",
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
                                  "${widget.slider1}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "${widget.tax1}",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "\$${widget.tip1}",
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
              "Everybody Should Pay \$${result.toStringAsFixed(3)}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: InkWell(onTap: () {
                Navigator.pop(context);
              },
                child: Card(
                  elevation: 4.0,
                  color: Color(0xffff7000),
                  child: Center(
                      child: Text("Calculate Again ?",
                          style: TextStyle(fontSize: 30))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
