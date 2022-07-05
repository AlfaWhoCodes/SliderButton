mai// Coded by @alfaWhoCodes
// INSTAGRAM : https://www.instagram.com/alfawhocodes/

import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SlideWidget(),
  ));
}

class SlideWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 16,
            ),
            Center(
                child: Text(
              'alfawhocodes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 16,
            ),
            Divider(),
            SizedBox(
              height: 16,
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> _key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: _key,
                    onSubmit: () {
                      Future.delayed(
                        Duration(seconds: 6),
                        () => _key.currentState?.reset(),
                      );
                    },
                    innerColor: Colors.black,
                    outerColor: Colors.white,
                  ),
                );
              },
            ),
            Builder(
              builder: (context) {
                final GlobalKey<SlideActionState> _key = GlobalKey();
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SlideAction(
                    key: _key,
                    onSubmit: () {
                      Future.delayed(
                        Duration(seconds: 6),
                        () => _key.currentState?.reset(),
                      );
                    },
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Unlock',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    sliderButtonIcon: Icon(Icons.lock),
                  ),
                );
              },
            ),
            SizedBox(
              height: 16,
            ),
            Center(
                child: Text(
              'Follow for more',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
            )),
          ],
        ),
      ),
    );
  }
}
