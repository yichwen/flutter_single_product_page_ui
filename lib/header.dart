import 'package:flutter/material.dart';
import 'package:single_product_page_ui/clipper.dart';
import 'package:single_product_page_ui/customIcon.dart';
import 'package:single_product_page_ui/gradient.dart';

var content = Container(
  margin: const EdgeInsets.only(top: 30.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Image(
        width: 150,
        height: 150,
        image: AssetImage('assets/googlehome.png'),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: 70,
              height: 30,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    '4.8',
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Text(
                  'Google Home',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Text(
                    'Google LLC',
                    style: TextStyle(
                      color: Colors.black87.withOpacity(.3),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                gradient: btnGradient,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 10,
                    color: Colors.black12,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              child: Icon(
                Icons.share,
                size: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);

var _appbar = Container(
  margin: const EdgeInsets.only(top: 20,),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: Icon(
            CustomIcons.menu,
            color: Colors.black87,
          ),
          onPressed: () {},
          splashColor: Colors.black,
        ),
         IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.black87,
          ),
          onPressed: () {},
          splashColor: Colors.black,
        ),
      ],
    ),
  ),
);

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: ArcClipper(),
            child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: bgGradient,
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset.center,
            heightFactor: 3.5,
            child: content,
          ),
          _appbar,
        ],
      ),
    );
  }
}
