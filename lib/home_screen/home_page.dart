import 'package:flutter/material.dart';

class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffEB1D65),
                  // borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(50),
                  // bottomRight: Radius.circular(50),
                  // ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.clear_all, color: Colors.white, size: 30),
                          Text(
                            "Age Calculator",
                            style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 2,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              wordSpacing: 3,
                            ),
                          ),
                          Icon(Icons.account_circle,
                              color: Colors.white, size: 30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(50),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.pink.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Text(
                      "Your Birth Date",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 18,
                            letterSpacing: 3,
                            color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.pink,
                          ),
                          suffixIcon: Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.pink,
                          ),
                          hintText: "DD/MM/YY",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      "Current Date",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        letterSpacing: 2,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 1,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 18,
                            letterSpacing: 3,
                            color: Colors.black),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.pink,
                          ),
                          suffixIcon: Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.pink,
                          ),
                          hintText: "DD/MM/YY",
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 15,
                      left: 8,
                      right: 8,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          
                        });
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              Colors.pink.shade300,
                              Colors.pink.shade700,
                              Colors.pink.shade300,
                            ],
                          ),
                        ),
                        child: Text(
                          "Calculate Age",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
