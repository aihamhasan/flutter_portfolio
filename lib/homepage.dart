import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:mailto/mailto.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  static const _url = 'https://www.linkedin.com/in/aiham-h-29b754192/';
  static const _url1 = 'https://github.com/aihamhasan';
  static const _url2 = 'https://stackoverflow.com/users/11805213/aihamhasan';

  void _launchURLmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'aihamhasan04@gmail.com',
      queryParameters: {'subject': 'Subject'},
    );
    String url = params.toString();
    try {
      await launch(url);
    } catch (e) {
      await Clipboard.getData('aihamhasan04@gmail.com');
      // _emailCopiedToClipboard = true;
    }
  }

  void _launchURL() async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';

  void _launchURL1() async => await canLaunch(_url1)
      ? await launch(_url1)
      : throw 'Could not launch $_url1';

  void _launchURL2() async => await canLaunch(_url2)
      ? await launch(_url2)
      : throw 'Could not launch $_url2';

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: SingleChildScrollView(
        child: ResponsiveBuilder(builder: (context, size) {
          return Padding(
            padding: EdgeInsets.all(16),
            child: size.isMobile
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          // Text("Portfolio"),
                          Spacer(),
                          // TextButton(
                          //   child: Text("All Projects"),
                          //   onPressed: () {},
                          // ),
                          SizedBox(
                            width: 30,
                          ),
                          ElevatedButton(
                              child: Text("Contact"),
                              onPressed: _launchURLmail),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 100.0.w,
                              height: 40.0.h,
                              child: Image(
                                image: AssetImage('assets/img1.png'),
                                width: 85.0.w,
                                height: 40.0.h,
                              )),
                          Text(
                            "Aiham Hasan",
                            style: GoogleFonts.montserrat(
                                fontSize: 14.0.sp, color: Colors.blueAccent),
                          ),
                          Text(
                            "Software Engineer -Flutter Based in Mangalore, India",
                            style: GoogleFonts.montserrat(
                                fontSize: 14.0.sp, color: Colors.blueAccent),
                          ),
                          Row(
                            children: [
                              FlatButton(
                                onPressed: _launchURL,
                                child: Container(
                                    width: 8.1.w,
                                    height: 8.1.h,
                                    child: Image(
                                        image:
                                            AssetImage("assets/linkedin.png"))),
                              ),
                              SizedBox(
                                width: 3.0.w,
                              ),
                              FlatButton(
                                onPressed: _launchURL1,
                                child: Container(
                                    width: 7.0.w,
                                    height: 7.0.h,
                                    child: Image(
                                        image:
                                            AssetImage("assets/github.png"))),
                              ),
                              SizedBox(
                                width: 3.0.w,
                              ),
                              FlatButton(
                                onPressed: _launchURL2,
                                child: Container(
                                    width: 7.0.w,
                                    height: 7.0.h,
                                    child: Image(
                                        image: AssetImage("assets/stack.png"))),
                              ),
                            ],
                          ),
                          //  Spacer(),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 90.0.w,
                            height: 40.0.h,
                            child: Image(
                              image: AssetImage('assets/img2.png'),
                            ),
                          ),
                          Text(
                            "Specialised in developing Applications",
                            style: GoogleFonts.montserrat(
                                fontSize: 14.0.sp, color: Colors.blueAccent),
                          ),
                          Text("for All Platforms using Flutter",
                              style: GoogleFonts.montserrat(
                                  fontSize: 14.0.sp, color: Colors.blueAccent))
                        ],
                      )
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          // Text("Aiham H"),
                          Spacer(),
                          // TextButton(
                          //   child: Text("All Projects"),
                          //   onPressed: () {},
                          // ),
                          SizedBox(
                            width: 30,
                          ),
                          SizedBox(
                            width: 13.0.w,
                            height: 2.0.h,
                            child: ElevatedButton(
                                child: Text("Contact"),
                                onPressed: _launchURLmail),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Aiham Hasan",
                                style: GoogleFonts.montserrat(
                                    fontSize: 14.0.sp,
                                    color: Colors.blueAccent),
                              ),
                              Text(
                                "Software Engineer -Flutter Based in",
                                style: GoogleFonts.montserrat(
                                    fontSize: 14.0.sp,
                                    color: Colors.blueAccent),
                              ),
                              Text(
                                "Mangalore, India",
                                style: GoogleFonts.montserrat(
                                    fontSize: 14.0.sp,
                                    color: Colors.blueAccent),
                              ),
                              Row(
                                children: [
                                  FlatButton(
                                    onPressed: _launchURL,
                                    child: Container(
                                        width: 8.0.w,
                                        height: 8.0.h,
                                        child: Image(
                                            image: AssetImage(
                                                "assets/linkedin.png"))),
                                  ),
                                  SizedBox(
                                    width: 7.0.w,
                                  ),
                                  FlatButton(
                                    onPressed: _launchURL1,
                                    child: Container(
                                        width: 7.0.w,
                                        height: 7.0.h,
                                        child: Image(
                                            image: AssetImage(
                                                "assets/github.png"))),
                                  ),
                                  SizedBox(
                                    width: 7.0.w,
                                  ),
                                  FlatButton(
                                    onPressed: _launchURL2,
                                    child: Container(
                                        width: 7.0.w,
                                        height: 7.0.h,
                                        child: Image(
                                            image: AssetImage(
                                                "assets/stack.png"))),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Spacer(),
                          Container(
                              width: 100.0.w,
                              height: 40.0.h,
                              child: Image(
                                image: AssetImage('assets/img1.png'),
                                width: 85.0.w,
                                height: 40.0.h,
                              ))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 95.0.w,
                            height: 35.0.h,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/img2.png'),
                            ),
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Specialised in developing Applications",
                                style: GoogleFonts.montserrat(
                                    fontSize: 14.0.sp,
                                    color: Colors.blueAccent),
                              ),
                              Text("for All Platforms using Flutter",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14.0.sp,
                                      color: Colors.blueAccent))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
          );
        }),
      ),
    );
  }
}
