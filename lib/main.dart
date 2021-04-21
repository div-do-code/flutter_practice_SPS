import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
import 'package:toast/toast.dart';
//import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Stone * Paper * Scissor',
          style: GoogleFonts.bebasNeue(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        shadowColor: Colors.black,
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int spsNumber;
  int spsNumberPlayer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(30),
            height: 275,
            child: Image.asset(
              'lib/img/sps$spsNumber.jpg',
            )),
        Divider(
          height: 10,
          color: Colors.grey,
        ),
        Container(
          padding: EdgeInsets.all(30),
          height: 275,
          child: Image.asset('lib/img/sps$spsNumberPlayer.jpg'),
        ),
        Container(
          height: 90,
          color: Colors.purpleAccent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FlatButton(
                onPressed: () {
                  setState(() {
                    spsNumber = Random().nextInt(3) + 1;
                    spsNumberPlayer = 2;
                    //if both no. are 2=2 then it is tie
                    if (spsNumberPlayer == spsNumber) {
                      print('tie');
                      Toast.show("Tie.", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);

                      //     Fluttertoast.showToast(
                      //     msg: "This is Center Short Toast",
                      //     toastLength: Toast.LENGTH_SHORT,
                      //     gravity: ToastGravity.CENTER,
                      //     timeInSecForIosWeb: 1,
                      //     backgroundColor: Colors.red,
                      //     textColor: Colors.white,
                      //     fontSize: 16.0
                      // );

                    }

                    //if spsnumbreplayer is 2(paper)<1 then it is win
                    if (spsNumberPlayer < spsNumber) {
                      print('you won');
                      Toast.show("You Won.", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                    }
                    //if spsnumber is 3(scissor)>2 then it is loose
                    if (spsNumberPlayer > spsNumber) {
                      print('you loose');
                      Toast.show("You Loose.", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                    }
                  });
                },
                child: Text('Stone'),
                color: Colors.white,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    spsNumber = Random().nextInt(3) + 1;
                    spsNumberPlayer = 1;
                    //if both no. are 1=1 then it is tie
                    if (spsNumberPlayer == spsNumber) {
                      print('tie');
                      Toast.show("Tie.", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                    }
                    //because our images are sps1(paper) sps2(stone) sps3(scissor)
                    //if spsnumbreplayer is smaller than spsnumber and spsnumber should be 2({paper-> stone = win})
                    if (spsNumberPlayer < spsNumber && spsNumber == 2) {
                      print('you won');
                      Toast.show("You Won.", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                    }
                    //because our images are sps1(paper) sps2(stone) sps3(scissor)
                    //if spsnumbreplayer is smaller than spsnumber and spsnumber should be 3({paper-> scissor = loose})
                    if (spsNumberPlayer < spsNumber && spsNumber == 3) {
                      print('you loose');
                      Toast.show("You Loose.", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                    }
                  });
                },
                child: Text('Paper'),
                color: Colors.white,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    spsNumber = Random().nextInt(3) + 1;
                    spsNumberPlayer = 3;
                    //if both no. are 3=3 then it is tie
                    if (spsNumberPlayer == spsNumber) {
                      print('tie');
                      Toast.show("Tie.", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                    }
                    //because our images are sps1(paper) sps2(stone) sps3(scissor)
                    //if spsnumbreplayer is greater than spsnumber and spsnumber should be 1({scissor-> paper = win})
                    if (spsNumberPlayer > spsNumber && spsNumber == 1) {
                      print('you won');
                      Toast.show("You Won.", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                    }
                    //because our images are sps1(paper) sps2(stone) sps3(scissor)
                    //if spsnumbreplayer is greater than spsnumber and spsnumber should be 2({scissor-> stone = loose})
                    if (spsNumberPlayer > spsNumber && spsNumber == 2) {
                      print('you loose');
                      Toast.show("You Loose.", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                    }
                  });
                },
                child: Text('Scissor'),
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
