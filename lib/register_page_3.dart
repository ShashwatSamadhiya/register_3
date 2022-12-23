import 'dart:math';

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
    return Expanded(
        child: Container(
      width: 390,
      //height: 554,
      color: Colors.black,
      child: Column(
        children: [
          // Container(
          //   width: 390,
          //   height: 197,
          //   margin: EdgeInsets.only(top: 280),
          //   child: Image.asset(
          //     "assests/images/group.png",
          //   ),
          // ),
          Expanded(flex: 100, child: Container()),
          Expanded(
            flex: bt ? 400 : 287,
            child: Container(
              width: 389,
              //height: 544,
              //margin: EdgeInsets.only(top: 87),
              child: Image.asset(
                bt
                    ? "assests/images/mixed.png"
                    : "assests/images/mixed_half.png",
              ),
            ),
          )
        ],
      ),
    ));
  }

  Widget field(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 15),
      width: 359,
      // height: 22,
      child: Row(children: [
        Text(
          "+91 98263 76262",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: min(
                  17,
                  min(MediaQuery.of(context).size.width / 19,
                      MediaQuery.of(context).size.height / 27)),
              color: Color(0xFFFAEAEB2),
              letterSpacing: -.31),
        ),
        Spacer(),
        Container(
          //margin: EdgeInsets.only(left: 170),
          child: Text(
            "Change",
            style: TextStyle(
              color: Color(0xFFF9C63E5),
              fontWeight: FontWeight.w400,
              fontSize: min(
                  15,
                  min(MediaQuery.of(context).size.width / 20,
                      MediaQuery.of(context).size.height / 33)),
            ),
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
      //height: 92,
      margin: EdgeInsets.only(left: 17, right: 15),
      padding: EdgeInsets.symmetric(vertical: 2),
      child: Center(
          child: Text(
        "098 042",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: min(
                40,
                min(MediaQuery.of(context).size.width / 9,
                    MediaQuery.of(context).size.height / 20)),
            wordSpacing: 5,
            letterSpacing: 1,
            color: Colors.white),
      )),
    );
  }

  Widget Button(BuildContext context) {
    return Flexible(
        child: Container(
            width: 358,
            margin: EdgeInsets.only(left: 16, right: 16),
            // margin: EdgeInsets.only(left: 16, top: 180),
            child: bt
                ? RichText(
                    text: TextSpan(
                        text: "Calling in ",
                        style: TextStyle(
                          fontSize: min(
                              15,
                              min(MediaQuery.of(context).size.width / 20,
                                  MediaQuery.of(context).size.height / 33)),
                          fontWeight: FontWeight.w400,
                          // letterSpacing: -0.24
                        ),
                        children: <TextSpan>[
                        TextSpan(
                          text: sec >= 10 ? "00:${sec}" : "00:0${sec}",
                          style: TextStyle(
                            fontSize: min(
                                15,
                                min(MediaQuery.of(context).size.width / 20,
                                    MediaQuery.of(context).size.height / 33)),
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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              flex: 125,
                              child: Text(
                                "Didn't receive the call?",
                                style: TextStyle(
                                  fontSize: min(
                                      15,
                                      min(
                                          MediaQuery.of(context).size.width /
                                              20,
                                          MediaQuery.of(context).size.height /
                                              33)),
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              )),
                          Expanded(flex: 100, child: Container()),
                          Expanded(
                            flex: 280,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 257,
                                  child: Container(
                                    // margin: EdgeInsets.only(top: 36),
                                    width: 36,
                                    //height: 36,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      //borderRadius: BorderRadius.circular(100),
                                      color: Color(0xFFF3A3A3C),
                                    ),
                                    child:
                                        Image.asset("assests/images/air.png"),
                                  ),
                                ),
                                Expanded(flex: 100, child: Container()),
                                Expanded(
                                    flex: 1821,
                                    child: Container(
                                        width: 297,
                                        // height: 40,
                                        //margin: EdgeInsets.only(top: 36),
                                        child: Text(
                                          "Try Switching Airplane mode ON and OFF. Then Retry calling",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: min(
                                                  15,
                                                  min(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          23,
                                                      MediaQuery.of(context)
                                                              .size
                                                              .height /
                                                          37)),
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white),
                                        )))
                              ],
                            ),
                          ),
                          Expanded(flex: 101, child: Container()),
                          Expanded(
                              flex: 200,
                              child: Container(
                                  width: 358,
                                  // height: 32,
                                  //margin: EdgeInsets.only(top: 97),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Retry",
                                      style: TextStyle(
                                        fontSize: min(
                                            13,
                                            min(
                                                MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    30,
                                                MediaQuery.of(context)
                                                        .size
                                                        .height /
                                                    33)),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  )))
                        ]),
                  )));
  }

  Widget lower(BuildContext context) {
    return Container(
      width: 390,
      // height: bt ? 273 : 428,
      //margin: bt ? EdgeInsets.only(top: 524) : EdgeInsets.only(top: 415),
      color: const Color(0xFFF1C1C1E),
      child: Column(children: [
        Expanded(flex: 157, child: field(context)),
        Expanded(flex: 100, child: Container()),
        Expanded(flex: 657, child: textArea(context)),
        Expanded(flex: 129, child: Container()),
        Expanded(
            flex: bt ? 192 : 921,
            child: Column(
              children: [Button(context)],
            ))
      ]),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: const Color(0xFFF1C1C1E),
            // constraints: BoxConstraints(maxHeight: 844, maxWidth: 390),
            child: Column(
              children: [
                Expanded(
                    flex: bt ? 1541 : 1220,
                    child: Column(
                      children: [
                        Crd(context),
                      ],
                    )),
                Expanded(flex: 40, child: Container()),
                Expanded(flex: bt ? 488 : 750, child: lower(context)),
                Expanded(flex: 150, child: Container()),
              ],
            )),
      ),
    );
  }
}
