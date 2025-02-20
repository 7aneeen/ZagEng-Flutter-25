import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});
  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double x = 0;
  int age = 0;
  int weight = 0;
  Color color1 = Colors.white;
  Color color2 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style:
              TextStyle(color: Color(0XFF87B1E3), fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        color1 = Color(0xFFF48C8C);
                        color2 = Colors.white;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF87B1E3),
                          border: Border.all(color: color1,width: 3)),
                      padding: EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 70,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        color1 = Colors.white;
                        color2 = Color(0xFFF48C8C);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF87B1E3),
                          border: Border.all(color: color2,width: 3)),
                      padding: EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 70,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFF87B1E3),
              ),
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${x.roundToDouble()}",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Slider(
                      activeColor: Color(0XFFF48C8C),
                      min: 0,
                      max: 300,
                      value: x,
                      onChanged: (val) {
                        setState(() {
                          x = val;
                        });
                      })
                ],
              ),
            )),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF87B1E3),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: Color(0XFFF48C8C),
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                if (age > 0) {
                                  setState(() {
                                    age--;
                                  });
                                }
                              },
                              backgroundColor: Color(0XFFF48C8C),
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF87B1E3),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: Color(0XFFF48C8C),
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                if (weight > 0) {
                                  setState(() {
                                    weight--;
                                  });
                                }
                              },
                              backgroundColor: Color(0XFFF48C8C),
                              child: Text(
                                "-",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 30),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0XFFF48C8C)),
                child: MaterialButton(
                  onPressed: () {},
                  child: Text(
                    "CALCULATE",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
