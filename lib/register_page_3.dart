import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:async';

class register_page_3 extends StatefulWidget {
  const register_page_3({super.key});

  @override
  State<register_page_3> createState() => _register_page_3State();
}

class _register_page_3State extends State<register_page_3> {
  bool bt = true;
  int sec = 30;
  Timer? countdownTimer;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => startTimer());
  }

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void setCountDown() {
    setState(() {
      if (sec == 0) {
        countdownTimer!.cancel();
        bt = false;
        sec = 30;
      } else {
        sec = sec - 1;
      }
    });
  }
  // void initState() {
  //   Timer mytimer = Timer.periodic(Duration(seconds: 1), (timer) {
  //     setState(() {
  //       if (sec != 0)
  //         sec = sec - 1;
  //       else {
  //         bt = false;
  //       }
  //     });
  //     //mytimer.cancel() //to terminate this timer
  //   });
  //   if (sec == 0) setState(() => mytimer.cancel());
  //   super.initState();
  // }

  @override
  Widget Crd(BuildContext context) {
    return Container(
      width: 390,
      height: 107 + 544,
      color: Colors.black,
      child: Stack(
        children: [
          Container(
            width: 390,
            height: 197,
            margin: EdgeInsets.only(top: 280),
            child: Image.asset(
              "assests/images/group.png",
            ),
          ),
          Container(
            width: 390,
            height: 544,
            margin: EdgeInsets.only(top: 107),
            child: Image.asset(
              "assests/images/whatsapp.png",
            ),
          ),
        ],
      ),
    );
  }

  Widget field(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 34, left: 16, right: 15),
      width: 359,
      height: 22,
      child: Row(children: [
        Text(
          "+91 98263 76262",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17,
              color: Color(0xFFFAEAEB2),
              letterSpacing: -.31),
        ),
        Container(
          margin: EdgeInsets.only(left: 170),
          child: Text(
            "Change",
            style: TextStyle(
                color: Color(0xFFF9C63E5),
                fontWeight: FontWeight.w400,
                fontSize: 15),
          ),
        ),
      ]),
    );
  }

  Widget textArea(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(14),
      ),
      width: 359,
      height: 92,
      margin: EdgeInsets.only(top: 70, left: 17, right: 15),
      child: Container(
          margin: EdgeInsets.only(top: 18),
          child: Text(
            "098 042",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40,
                wordSpacing: 5,
                letterSpacing: 16,
                color: Colors.white),
          )),
    );
  }

  Widget Button(BuildContext context) {
    return Container(
        width: 358,
        margin: EdgeInsets.only(left: 16, top: 180),
        child: bt
            ? RichText(
                text: TextSpan(
                    text: "Calling in ",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      // letterSpacing: -0.24
                    ),
                    children: <TextSpan>[
                    TextSpan(
                      text: sec >= 10 ? "00:${sec}" : "00:0${sec}",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        //letterSpacing: -0.24
                      ),
                      // recognizer: TapGestureRecognizer()
                      //   ..onTap = () => {
                      //         startTimer(),
                      //       }
                    )
                  ]))
            : Container(
                width: 358,
                // height: 149,
                child: Stack(children: [
                  Text(
                    "Didn't recived the call?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 36),
                        width: 36,
                        height: 36,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFF3A3A3C),
                        ),
                        child: Image.asset("assests/images/air.png"),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Container(
                          width: 297,
                          height: 40,
                          margin: EdgeInsets.only(top: 36),
                          child: Text(
                            "Try Switching Airplane mode ON and OFF. Then Retry calling",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ))
                    ],
                  ),
                  Container(
                      width: 358,
                      height: 32,
                      margin: EdgeInsets.only(top: 97),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Container(
                        width: 36,
                        height: 18,
                        margin: EdgeInsets.only(left: 161, right: 161, top: 7),
                        child: Text(
                          "Retry",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ))
                ]),
              ));
  }

  Widget lower(BuildContext context) {
    return Container(
      width: 390,
      height: bt ? 273 : 428,
      margin: bt ? EdgeInsets.only(top: 524) : EdgeInsets.only(top: 415),
      color: const Color(0xFFF1C1C1E),
      child:
          Stack(children: [field(context), textArea(context), Button(context)]),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            color: const Color(0xFFF1C1C1E),
            constraints: BoxConstraints(maxHeight: 944, maxWidth: 390),
            child: Column(
              children: [
                Stack(
                  children: [
                    Crd(context),
                    //  field(context),
                    //    textArea(context),
                    lower(context)
                  ],
                )

                // Button(context)
              ],
            )),
      ),
    );
  }
}
