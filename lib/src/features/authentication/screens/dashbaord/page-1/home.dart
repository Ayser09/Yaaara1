import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../utils.dart';

class HomeScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // homeR7L (1:13)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 87*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupawytDhQ (PQrUR3shpYK1L1zbErAWyt)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 30*fem),
              width: double.infinity,
              height: 364*fem,
              child: Stack(
                children: [
                  Positioned(
                    // welcomeieA (1:14)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 428*fem,
                        height: 193*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            gradient: LinearGradient (
                              begin: Alignment(-1, -0.886),
                              end: Alignment(1, 1.622),
                              colors: <Color>[Color(0xffe1d5f2), Color(0xffbcd3ee)],
                              stops: <double>[0, 1],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // welcomeuserwWv (1:15)
                    left: 13*fem,
                    top: 66*fem,
                    child: Align(
                      child: SizedBox(
                        width: 212*fem,
                        height: 39*fem,
                        child: Text(
                          'welcome to Yaara,',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 30*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.1725*ffem/fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // bubbleapn (1:16)
                    left: 15*fem,
                    top: 110*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(29*fem, 9.83*fem, 10*fem, 9.83*fem),
                      width: 394*fem,
                      height: 229*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0x19000000)),
                        color: Color(0xffe8e3fc),
                        borderRadius: BorderRadius.circular(10*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x33000000),
                            offset: Offset(0*fem, 4*fem),
                            blurRadius: 5*fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // feelingmehhtalktobubbleztW (1:19)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 25.33*fem),
                            constraints: BoxConstraints (
                              maxWidth: 161*fem,
                            ),
                            child: Text(
                              'Feeling mehh?\nTalk to Bubble.',
                              style: SafeGoogleFont (
                                'Roboto',
                                fontSize: 24*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.1725*ffem/fem,
                                color: Color(0xff8e61da),
                              ),
                            ),
                          ),
                          Container(
                            // bubbleimg64N (1:18)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22.56*fem),
                            width: 173*fem,
                            height: 186.78*fem,
                            child: Image.asset(
                              'assets/page-1/images/bubbleimg.png',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogrouptaoyoUa (PQrUexeCDB41QxraQiTAoY)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 4*fem, 27*fem),
              width: double.infinity,
              height: 161*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // health6yU (1:50)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28*fem, 0*fem),
                    width: 189*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle16Rkr (1:20)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 177*fem,
                              height: 155*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                  gradient: LinearGradient (
                                    begin: Alignment(-0.893, -0.919),
                                    end: Alignment(0.802, 0.792),
                                    colors: <Color>[Color(0xffe1d4f1), Color(0xffbed5f1)],
                                    stops: <double>[0, 1],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x33000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 5*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // jumpropeanddumbbellforworkoutE (1:62)
                          left: 45*fem,
                          top: 42*fem,
                          child: Align(
                            child: SizedBox(
                              width: 144*fem,
                              height: 119*fem,
                              child: Image.asset(
                                'assets/page-1/images/jump-rope-and-dumbbell-for-workout.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // healthWvi (1:48)
                          left: 42*fem,
                          top: 23*fem,
                          child: Align(
                            child: SizedBox(
                              width: 71*fem,
                              height: 29*fem,
                              child: Text(
                                'Health',
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1725*ffem/fem,
                                  color: Color(0xff8e61da),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // moodtrackerzqt (1:51)
                    width: 192*fem,
                    height: 155*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle16Xqp (1:52)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 177*fem,
                              height: 155*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                  gradient: LinearGradient (
                                    begin: Alignment(-0.893, -0.919),
                                    end: Alignment(0.802, 0.792),
                                    colors: <Color>[Color(0xffe1d4f1), Color(0xffbed5f1)],
                                    stops: <double>[0, 1],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x33000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 5*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // deskcalendarwithsmileyfaceandg (1:64)
                          left: 76*fem,
                          top: 61*fem,
                          child: Align(
                            child: SizedBox(
                              width: 116*fem,
                              height: 94*fem,
                              child: Image.asset(
                                'assets/page-1/images/desk-calendar-with-smiley-face-and-good-mood.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // trackyourmoodU8n (1:53)
                          left: 24*fem,
                          top: 23*fem,
                          child: Align(
                            child: SizedBox(
                              width: 121*fem,
                              height: 57*fem,
                              child: Text(
                                'Track your mood',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1725*ffem/fem,
                                  color: Color(0xff8e61da),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupyraa8sY (PQrUrNUr63LXhXMmtFyrAa)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
              width: double.infinity,
              height: 158*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // insights3jc (1:60)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
                    width: 236*fem,
                    height: 155*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle16AJS (1:55)
                          left: 13*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 177*fem,
                              height: 155*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                  gradient: LinearGradient (
                                    begin: Alignment(-0.893, -0.919),
                                    end: Alignment(0.802, 0.792),
                                    colors: <Color>[Color(0xffe1d4f1), Color(0xffbed5f1)],
                                    stops: <double>[0, 1],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x33000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 5*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pulsePwt (1:63)
                          left: 0*fem,
                          top: 63*fem,
                          child: Align(
                            child: SizedBox(
                              width: 236*fem,
                              height: 92*fem,
                              child: Image.asset(
                                'assets/page-1/images/pulse.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // insightsWWi (1:56)
                          left: 55*fem,
                          top: 23*fem,
                          child: Align(
                            child: SizedBox(
                              width: 87*fem,
                              height: 29*fem,
                              child: Text(
                                'Insights',
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1725*ffem/fem,
                                  color: Color(0xff8e61da),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // activitiescZk (1:65)
                    width: 204*fem,
                    height: double.infinity,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle16ZUz (1:66)
                          left: 0*fem,
                          top: 0*fem,
                          child: Align(
                            child: SizedBox(
                              width: 177*fem,
                              height: 155*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                  gradient: LinearGradient (
                                    begin: Alignment(-0.893, -0.919),
                                    end: Alignment(0.802, 0.792),
                                    colors: <Color>[Color(0xffe1d4f1), Color(0xffbed5f1)],
                                    stops: <double>[0, 1],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x33000000),
                                      offset: Offset(0*fem, 4*fem),
                                      blurRadius: 5*fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // gameconsolewithgameiconsAza (1:74)
                          left: 42*fem,
                          top: 44*fem,
                          child: Align(
                            child: SizedBox(
                              width: 162*fem,
                              height: 114*fem,
                              child: Image.asset(
                                'assets/page-1/images/game-console-with-game-icons.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // activitiesHJW (1:68)
                          left: 42*fem,
                          top: 23*fem,
                          child: Align(
                            child: SizedBox(
                              width: 102*fem,
                              height: 29*fem,
                              child: Text(
                                'Activities',
                                style: SafeGoogleFont (
                                  'Roboto',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.1725*ffem/fem,
                                  color: Color(0xff8e61da),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // helplineB8z (1:75)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 19*fem, 0*fem),
              width: double.infinity,
              height: 72*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(10*fem),
                gradient: LinearGradient (
                  begin: Alignment(-0.893, -0.919),
                  end: Alignment(0.802, 0.792),
                  colors: <Color>[Color(0xffe1d4f1), Color(0xffbed5f1)],
                  stops: <double>[0, 1],
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x33000000),
                    offset: Offset(0*fem, 4*fem),
                    blurRadius: 5*fem,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    // pinkandbluephoneiconC46 (1:82)
                    left: 218*fem,
                    top: 4*fem,
                    child: Align(
                      child: SizedBox(
                        width: 123*fem,
                        height: 62*fem,
                        child: Image.asset(
                          'assets/page-1/images/pink-and-blue-phone-icon.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // helplinenumbersgV4 (1:78)
                    left: 42*fem,
                    top: 26*fem,
                    child: Align(
                      child: SizedBox(
                        width: 191*fem,
                        height: 29*fem,
                        child: Text(
                          'Helpline numbers',
                          style: SafeGoogleFont (
                            'Roboto',
                            fontSize: 24*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.1725*ffem/fem,
                            color: Color(0xff8e61da),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}