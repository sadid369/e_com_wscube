import 'package:e_com_wscube/constants/color_constants.dart';
import 'package:e_com_wscube/constants/image_url_constant.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<Map<String, dynamic>> cartItemArray = [
    {
      "name": "Woman Sweater",
      "category": "Woman Fashion",
      "price": 70,
      "imgUrl": "${ImageUrlConstant.wirelessHeadPhone}",
    },
    {
      "name": "Woman Sweater",
      "category": "Woman Fashion",
      "price": 70,
      "imgUrl": "${ImageUrlConstant.womansSweater}",
    },
    {
      "name": "Woman Sweater",
      "category": "Woman Fashion",
      "price": 70,
      "imgUrl": "${ImageUrlConstant.wirelessHeadPhone}",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            // width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                        color: ColorConstants.black,
                      )),
                ),
                Text(
                  'MyCart',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.15,
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 400,
            padding: const EdgeInsets.all(8),
            margin: EdgeInsets.all(10),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: cartItemArray.length,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  height: 150,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    // isThreeLine: true,
                    contentPadding: EdgeInsets.zero,
                    leading: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 100,
                        minHeight: 260,
                        maxWidth: 104,
                        maxHeight: 264,
                      ),
                      child: Container(
                        // width: 100,
                        // height: 150,
                        decoration: BoxDecoration(
                            color: ColorConstants.grayLight,
                            borderRadius: BorderRadius.circular(15)),
                        child: Image.asset(
                          cartItemArray[index]['imgUrl'],
                          // height: 120
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    title: Text('${cartItemArray[index]['name']}'),
                    subtitle: Text('${cartItemArray[index]['category']}'),
                    trailing: Container(
                      // color: Colors.purple,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.delete_outline,
                              color: Colors.red,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              // padding: EdgeInsets.all(8),
                              width: 70,
                              height: 20,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '-',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 5,
                                  // ),
                                  Text(
                                    '1',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                  // SizedBox(
                                  //   width: 5,
                                  // ),
                                  Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
