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
      "price": 70.00,
      "imgUrl": "${ImageUrlConstant.wirelessHeadPhone}",
    },
    {
      "name": "Woman Sweater",
      "category": "Woman Fashion",
      "price": 70.00,
      "imgUrl": "${ImageUrlConstant.womansSweater}",
    },
    {
      "name": "Woman Sweater",
      "category": "Woman Fashion",
      "price": 70.00,
      "imgUrl": "${ImageUrlConstant.wirelessHeadPhone}",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.grayLight,
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
            height: 350,
            padding: const EdgeInsets.all(8),
            margin: EdgeInsets.all(10),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: cartItemArray.length,
              itemBuilder: (context, index) {
                return Container(
                    width: MediaQuery.of(context).size.width * 0.94,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      color: Colors.white,
                      // elevation: 10,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: ColorConstants.grayLight,
                            ),
                            padding: const EdgeInsets.all(2.0),
                            margin: EdgeInsets.all(10),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.28,
                                maxHeight:
                                    MediaQuery.of(context).size.width * 0.28,
                              ),
                              child: Image.asset(cartItemArray[index]['imgUrl'],
                                  fit: BoxFit.fill),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                    child: FittedBox(
                                      child: Text(
                                        '${cartItemArray[index]['name']}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                    child: Text(
                                      '${cartItemArray[index]['category']}',
                                      style: TextStyle(
                                        color: ColorConstants.gray,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 10, 0, 0),
                                    child: Text(
                                      '\$${cartItemArray[index]['price']}',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(2),
                            margin: EdgeInsets.all(10),
                            // color: Colors.blue,
                            width: 70,
                            height: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.delete_outline,
                                  color: Colors.red,
                                ),
                                Container(
                                  // alignment: Alignment.center,
                                  // padding: EdgeInsets.all(8),
                                  width: 60,
                                  height: 25,
                                  decoration: BoxDecoration(
                                    color: ColorConstants.grayLight,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        '-',
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        '+',
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 280,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(
                  height: 45,
                  child: TextField(
                    // textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 20),
                        filled: true,
                        fillColor: ColorConstants.grayLight,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(35),
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Enter Discount Code",
                        hintStyle:
                            TextStyle(color: ColorConstants.gray, fontSize: 14),
                        suffixIcon: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Apply',
                            style: TextStyle(
                              color: ColorConstants.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Subtotal',
                      style: TextStyle(
                        fontSize: 20,
                        color: ColorConstants.gray,
                      ),
                    ),
                    Text(
                      '\$245.00',
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 20,
                        color: ColorConstants.gray,
                      ),
                    ),
                    Text(
                      '\$245.00',
                      style: TextStyle(
                          fontSize: 20,
                          color: ColorConstants.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorConstants.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {},
                    child: Text("Checkout"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
