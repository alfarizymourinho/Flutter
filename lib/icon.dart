import 'package:flutter/material.dart';

class listview extends StatelessWidget {
  const listview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SafeArea(
              child: Container(
        height: 75,
        width: MediaQuery.of(context).size.width - 20,
        color: Colors.grey,
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 40,),
                Text("Icon 1")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 40,),
                // SizedBox(
                //   height: 25,
                //   width: 25,
                // ),
                Text("Icon 2")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 40,),
                // SizedBox(
                //   height: 25,
                //   width: 25,
                // ),
                Text("Icon 3")
              ],
            )
          ],
        ),
      ))),
    );
  }
}
