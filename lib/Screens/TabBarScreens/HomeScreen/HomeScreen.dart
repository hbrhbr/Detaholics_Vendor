import 'package:flutter/material.dart';
import 'package:owner/Helper/CommonWidgets.dart';
import 'package:owner/Helper/Constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<HomeList> itemList = [];
  List<Orders> orderList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.itemList = [
      HomeList('Total Sell', '${Currency.curr}2343', ''),
      HomeList('This Months', '${Currency.curr}243', ''),
      HomeList('Orders', '23', ''),
      HomeList('Stores', '2', ''),
    ];

    this.orderList = [
      Orders('Pending', true),
      Orders('Accepted', false),
      Orders('Delivered', false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.themeColor,
        iconTheme: IconThemeData(color: AppColor.white),
        title: setCommonText('Hello, Hardik', AppColor.white, 20.0,
            FontWeight.w700, 1, TextAlign.start),
        centerTitle: false,
        actions: [
          Icon(
            Icons.notifications,
            color: AppColor.white,
          ),
          setWithSpace(8)
        ],
      ),
      body: Container(
        color: AppColor.grey[100],
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 130,
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: AppColor.themeColor,
                        ),
                      ),
                      Expanded(
                        // flex: 1,
                        child: Container(
                          color: AppColor.grey[100],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 1.0,
                              spreadRadius: 1.0,
                              color: AppColor.grey[400],
                              offset: Offset(0, 0))
                        ]),
                    padding: EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        setCommonText('Add More Earn More', AppColor.black87,
                            14.0, FontWeight.w500, 1, TextAlign.start),
                        setHeightSpace(5),
                        setCommonText(
                            'Expanding your product line is a way of focusing on your customers and offering them add-ons or variants of the products they already love.',
                            AppColor.grey,
                            13.0,
                            FontWeight.w400,
                            5,
                            TextAlign.start),
                      ],
                    ),
                  ),
                ))
              ],
            ),
            // setHeightSpace(0),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: AppColor.deepOrange,
                    borderRadius: BorderRadius.circular(5)),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: setCommonText(
                          'Now refer or share your friend to expand your business more',
                          AppColor.white,
                          14.0,
                          FontWeight.w500,
                          2,
                          TextAlign.start),
                    )),
                    setWithSpace(8),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('Assets/Dashboard/refer.png'))),
                    ),
                    setWithSpace(8),
                  ],
                ),
              ),
            ),
            Container(
              height: 270,
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      setCommonText('Overview', AppColor.black, 15.0,
                          FontWeight.w700, 1, TextAlign.start),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          setCommonText('Life Time', AppColor.grey, 15.0,
                              FontWeight.w600, 1, TextAlign.start),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: AppColor.grey,
                          )
                        ],
                      )
                    ],
                  ),
                  setHeightSpace(8),
                  Expanded(
                    child: Container(
                      // color: AppColor.amber,
                      child: new GridView.count(
                        physics: NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        childAspectRatio: 1.5,
                        children: new List<Widget>.generate(
                            this.itemList.length, (index) {
                          return new GridTile(
                            child: new Card(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    setCommonText(
                                        '${this.itemList[index].title}',
                                        AppColor.black38,
                                        16.0,
                                        FontWeight.w400,
                                        1,
                                        TextAlign.start),
                                    setHeightSpace(5),
                                    setCommonText(
                                        '${this.itemList[index].value}',
                                        AppColor.black,
                                        18.0,
                                        FontWeight.w700,
                                        1,
                                        TextAlign.start),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 80,
              padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      setCommonText('Active Orders', AppColor.black, 15.0,
                          FontWeight.w700, 1, TextAlign.start),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          setCommonText('View All', AppColor.grey, 15.0,
                              FontWeight.w600, 1, TextAlign.start),
                          Icon(Icons.arrow_forward_ios_rounded,
                              color: AppColor.grey, size: 16)
                        ],
                      )
                    ],
                  ),
                  setHeightSpace(10),
                  Expanded(
                    child: Container(
                      // color: AppColor.red,
                      child: Column(
                        children: [
                          Container(
                            height: 34,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: orderList.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 5.0),
                                    child: InkWell(
                                      onTap: () {
                                        for (var item in this.orderList) {
                                          item.isSelect = false;
                                        }
                                        setState(() {
                                          this.orderList[index].isSelect = true;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            color:
                                                (this.orderList[index].isSelect)
                                                    ? AppColor.themeColor
                                                    : AppColor.grey,
                                            borderRadius:
                                                BorderRadius.circular(17)),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 12, right: 12),
                                          child: setCommonText(
                                              '${this.orderList[index].title}',
                                              AppColor.white,
                                              14.0,
                                              FontWeight.w500,
                                              1,
                                              TextAlign.center),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _setOrderList(),
          ],
        ),
      ),
    );
  }

  _setOrderList() {
    return Container(
      height: 190.0 * 2,
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 15),
      child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: 2,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  top: 4.0, bottom: 4.0, left: 5.0, right: 5.0),
              child: Container(
                // height: 170,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 0.5,
                          offset: Offset(0, 0),
                          spreadRadius: 0.5,
                          color: AppColor.grey[400])
                    ],
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        setCommonText('Order ID:#1234', AppColor.black, 14.0,
                            FontWeight.w500, 1, TextAlign.start),
                        setCommonText('May 30, 01:24 pm', AppColor.black, 14.0,
                            FontWeight.w500, 1, TextAlign.start),
                      ],
                    ),
                    setHeightSpace(3),
                    Row(
                      children: [
                        Container(
                          height: 35,
                          width: 35,
                          color: AppColor.red,
                        ),
                        setWithSpace(5),
                        Expanded(
                            child: Container(
                          color: AppColor.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              setCommonText('Royal Kathiyawadi', AppColor.black,
                                  14.0, FontWeight.w500, 1, TextAlign.start),
                              setCommonText(
                                  '220, Satyam Corporate, Shindhubhavan Road ahmedabad 380060',
                                  AppColor.grey,
                                  12.0,
                                  FontWeight.w500,
                                  2,
                                  TextAlign.start),
                            ],
                          ),
                        )),
                        setWithSpace(8),
                        setCommonText('${Currency.curr}234', AppColor.black,
                            14.0, FontWeight.w500, 1, TextAlign.start),
                      ],
                    ),
                    setHeightSpace(3),
                    setCommonText(
                        '1 x Chiken Beriyani, 1 x Dalfry Jeera rice, 3 x plane roti, 2 x Chhas',
                        AppColor.black,
                        14.0,
                        FontWeight.w500,
                        2,
                        TextAlign.start),
                    Divider(
                      color: AppColor.grey[400],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        setCommonText('Pending', AppColor.black, 15.0,
                            FontWeight.w500, 1, TextAlign.start),
                        Row(
                          children: [
                            setCommonText('Details', AppColor.grey, 15.0,
                                FontWeight.w500, 1, TextAlign.start),
                            Icon(Icons.arrow_forward, size: 18)
                          ],
                        )
                      ],
                    ),
                    setHeightSpace(8)
                  ],
                ),
              ),
            );
          }),
    );
  }

  _orderNotfoundWidget() {
    return Container(
      height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                blurRadius: 0.5,
                spreadRadius: 0.5,
                color: AppColor.grey[400],
                offset: Offset(0, 0))
          ]),
      child: setCommonText('You don\'t have any pending orders',
          AppColor.grey[400], 12.0, FontWeight.w500, 1, TextAlign.center),
    );
  }
}

class HomeList {
  String title;
  String value;
  String imgUlr;
  HomeList(this.title, this.value, this.imgUlr);
}

class Orders {
  String title;
  bool isSelect;
  Orders(this.title, this.isSelect);
}
