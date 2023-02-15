import 'package:flutter/material.dart';

class Age extends StatefulWidget {
  const Age({Key? key}) : super(key: key);

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  TextEditingController born_year = TextEditingController();
  TextEditingController current_year = TextEditingController();
  int year = 0;
int born_date=0;
int current_date=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
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
                            Icon(Icons.clear_all,
                                color: Colors.white, size: 30),
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
              child: Center(
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Your Birth Date",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                letterSpacing: 2,
                                fontWeight: FontWeight.w400,
                                wordSpacing: 1,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    year=0;
                                    born_date=0;
                                    current_date=0;
                                  });
                                },
                                child: Icon(Icons.close,
                                    color: Colors.black, size: 25, weight: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        width: double.infinity,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: born_year,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 18,
                                letterSpacing: 3,
                                color: Colors.black),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2)),
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
                            controller: current_year,
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 18,
                                letterSpacing: 3,
                                color: Colors.black),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: Colors.black, width: 2)),
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
                        child: GestureDetector(
                          onTap: () {
                            String start = born_year.text;
                            String current = current_year.text;
                            int born_date = int.parse(start);
                            int current_date = int.parse(current);
                            setState(() {
                              year = current_date - born_date;
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
            ),
            Padding(
              padding: const EdgeInsets.only(top: 400),
              child: Column(
                children: [
                  box("$year", "Year", Colors.purple),
                  box("mm", "Month", Colors.red),
                  box("dd", "Day", Colors.indigoAccent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget box(String time, String detail, Color c1) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: c1,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$detail  ",
              style: TextStyle(
                  letterSpacing: 3,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  wordSpacing: 2),
            ),
            Text(
              "$time",
              style: TextStyle(
                  letterSpacing: 3,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 30,
                  wordSpacing: 2),
            ),
          ],
        ),
      ),
    );
  }
}
