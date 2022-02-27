import 'dart:io';

import 'package:flutter/material.dart';

const lighterBlue = 0xFFE4FDFF;
const lightBlue = 0xFFDBEFF0;
const medBlue = 0xFF9AD9DB;

const lighterPink = 0xFFFDF3F6;
const lightPink = 0xFFFBE9ED;
const medPink = 0xFFFFCCD8;

const lighterPurple = 0xFFDAE0FF;
const lightPurple = 0xFFEBE9FD;
const medPurple = 0xFFD1CFE2;

void main() {
  // runApp(const MaterialApp(home: HomePage()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Main Body
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              color: const Color(lightBlue),
              child: Column(
                children: [
                  // Row 0 -- PullDown Bar
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    color: Color.fromARGB(255, 159, 182, 194),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                        image: AssetImage("assets/images/dropdown.png"),
                        height: 30,
                        width: 30,),
                    ],)
                  ),

                  // Row 1 -- Coins + Settings
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Coin Compartment
                      Container(
                        padding: EdgeInsets.all(10.0),
                        margin: EdgeInsets.all(10.0),
                        color: Color(medBlue),
                        child: Row(
                          children: const[
                            Text("149", style: TextStyle(fontSize: 26)),
                            Image(
                              image: AssetImage("assets/images/coin.png"),
                              height: 35,
                              width: 35)
                          ]),
                      ),

                      // Settings icon
                      Container(
                        margin: EdgeInsets.all(10.0),
                        child: const Image(
                          image: AssetImage("assets/images/settings.png"),
                          height: 50,
                          width: 50,)
                      )
                    ],
                  ),

                  // Row 2 -- Arrow + Pie Chart
                  Row(
                    children: [
                      // Arrow Icon
                      Container(
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          size: 35)
                      ),

                      // Pie Chart
                      Container(
                        child: const Image(
                          image: AssetImage("assets/images/expense_pie_chart.png"),
                          height: 300),
                      )
                  ],),

                  // Row 3 -- Current Balance
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.all(10.0),
                    color: Color(lighterBlue),
                    child: Column(
                      children: const [
                        Text("Current Balance:", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                        Text("SGD 3600", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)
                      ]),
                  ),

                  // Row 4 -- Progress Bar
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0,30.0,10.0,0),
                    child: const Image(
                      image: AssetImage("assets/images/progBar.png")),
                  )
                ]),
            ),

            // Navigation Bar
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              color: const Color(medBlue),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(child: Image(
                    image: AssetImage('assets/images/invest.png'),
                    height: 50,
                    width: 50,),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const InvestPage()));
                    },),

                    FlatButton(child: Image(
                    image: AssetImage('assets/images/home.png'),
                    height: 50,
                    width: 50),
                    onPressed: () {},),

                  FlatButton(child: Image(
                    image: AssetImage('assets/images/faq.png'),
                    height: 50,
                    width: 50),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FaqPage()));
                    },),
                ],
              ),
            )
        ],)
      )
    );
  }
}


class FaqPage extends StatelessWidget {
  const FaqPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Main Body
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              color: const Color(lightPink),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      // FAQ1 -- Commonly Asked Questions
                      Container(
                        decoration: BoxDecoration(
                          color: Color(lighterPink),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75)
                            )
                          ],
                          border: Border.all(
                            color: Color(lighterPink),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        padding: EdgeInsets.fromLTRB(20.0,40.0,20.0,40.0),
                        margin: EdgeInsets.fromLTRB(20.0,40.0,20.0,0.0),
                        child: const Text("Commonly Asked Questions",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                        ),),
                      ),

                      // FAQ2 -- Compounding Interest Calculator
                      Container(
                        decoration: BoxDecoration(
                          color: Color(lighterPink),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75)
                            )
                          ],
                          border: Border.all(
                            color: Color(lighterPink),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        padding: EdgeInsets.fromLTRB(20.0,40.0,20.0,40.0),
                        margin: EdgeInsets.fromLTRB(20.0,40.0,20.0,0.0),
                        child: const Text("Compounding Interest Calculator",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                        ),),
                      ),

                      // FAQ3 -- Contact Us
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(lighterPink),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75)
                            )
                          ],
                          border: Border.all(
                            color: Color(lighterPink),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        width: 325,
                        padding: EdgeInsets.fromLTRB(20.0,40.0,20.0,40.0),
                        margin: EdgeInsets.fromLTRB(20.0,40.0,20.0,0.0),
                        child: const Text("Contact Us",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                        ),),
                      )
                    ]),
                ],)

            ),

            // Navigation Bar
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              color: const Color(medPink),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(child: Image(
                    image: AssetImage('assets/images/invest.png'),
                    height: 50,
                    width: 50,),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const InvestPage()));
                    },),

                  FlatButton(child: Image(
                    image: AssetImage('assets/images/home.png'),
                    height: 50,
                    width: 50),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    },),

                  FlatButton(child: Image(
                    image: AssetImage('assets/images/faq.png'),
                    height: 50,
                    width: 50),
                    onPressed: () {},),
                ],
              ),
            )
          ]),)
    );
  }
}


class InvestPage extends StatelessWidget {
  const InvestPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // Holdings Overview
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              color: const Color(medPurple),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage('assets/images/holdingsOver.png'),
                    width: 360)
                ],
              ),
            ),

            // Trade Buttons
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              color: const Color(lightPurple),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // BCIP
                  Container(
                        decoration: BoxDecoration(
                          color: Color(lighterPurple),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75)
                            )
                          ],
                          border: Border.all(
                            color: Color(lighterPurple),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        padding: EdgeInsets.fromLTRB(10.0,20.0,10.0,20.0),
                        margin: EdgeInsets.fromLTRB(10.0,20.0,10.0,20.0),
                        child: const Text("Blue Chip Investment Plan",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                        ),),
                      ),

                  // Buy / Sell
                  Container(
                    alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color(lighterPurple),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 15.0,
                              offset: Offset(0.0, 0.75)
                            )
                          ],
                          border: Border.all(
                            color: Color(lighterPurple),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        padding: EdgeInsets.fromLTRB(10.0,20.0,10.0,20.0),
                        margin: EdgeInsets.fromLTRB(10.0,30.0,10.0,30.0),
                        width: 160,
                        height: 80,
                        child: const Text("Buy / Sell",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline
                        ),),
                      ),
                ],
              ),
            ),

            // Holdings
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              color: const Color(lightPurple),
              padding: EdgeInsets.fromLTRB(10.0,10.0,10.0,0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Holdings",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),)
                ],
              ),
            ),

            // Holdings Stocks
            Container(
              height: MediaQuery.of(context).size.height * 0.32,
              color: const Color(lightPurple),
              padding: EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Image(
                    image: AssetImage("assets/images/stocksEtf.png"))
                ],
              ),
            ),
            

            // Navigation Bar
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              color: const Color(medPurple),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(child: Image(
                    image: AssetImage('assets/images/invest.png'),
                    height: 50,
                    width: 50),
                    onPressed: () {},),

                    FlatButton(child: Image(
                    image: AssetImage('assets/images/home.png'),
                    height: 50,
                    width: 50),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                    },),

                  FlatButton(child: Image(
                    image: AssetImage('assets/images/faq.png'),
                    height: 50,
                    width: 50),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const FaqPage()));
                    },),
                ],
              ),
            )
          ]),)
    );
  }
}