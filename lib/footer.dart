import 'package:flutter/material.dart';
import 'package:single_product_page_ui/gradient.dart';
import 'package:single_product_page_ui/pages/productDesc.dart';
import 'package:single_product_page_ui/pages/specification.dart';
import 'package:single_product_page_ui/pages/userReviews.dart';

var favnprice = Padding(
  padding: const EdgeInsets.only(
    left: 20.0,
    right: 20.0,
    top: 25.0,
    bottom: 12.0,
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Row(
        children: <Widget>[
          Icon(
            Icons.favorite,
            color: Colors.red,
          ),
          Text('Add to wishlist'),
        ],
      ),
      Row(
        children: <Widget>[
          Text(
            '\$',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Text(
            '9999.00',
            style: TextStyle(
              fontSize: 35,
            ),
          ),
        ],
      ),
    ],
  ),
);

var divider = Divider();

class Footer extends StatefulWidget {
  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> with SingleTickerProviderStateMixin {
  List<Tab> _tabs;
  List<Widget> _pages;
  static TabController _controller;

  @override
  void initState() {
    super.initState();
    _tabs = [
      Tab(
        child: Text(
          'Product Description',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      Tab(
        child: Text(
          'Specification',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      Tab(
        child: Text(
          'User Reviews',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    ];

    _pages = [new ProductDesc(), new Specification(), new UserReview()];

    _controller = TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          isScrollable: true,
          controller: _controller,
          tabs: _tabs,
          indicatorColor: Colors.white,
        ),
        Divider(
          height: 1.0,
        ),
        SizedBox.fromSize(
          size: const Size.fromHeight(220),
          child: TabBarView(
            controller: _controller,
            children: _pages,
          ),
        ),
      ],
    );
  }
}

var bottomBtns = Padding(
  padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 10,),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Expanded(
        child: InkWell(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              height: 60,
              decoration: BoxDecoration(gradient: btnGradient, boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: Colors.black12,
                  offset: Offset(0, 10),
                ),
              ]),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48.0),
                child: Center(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
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
            Icons.add_shopping_cart,
            size: 25,
            color: Colors.white,
          ),
        ),
      ),
    ],
  ),
);
