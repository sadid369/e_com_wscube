import 'package:carousel_slider/carousel_slider.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_com_wscube/constants/color_constants.dart';
import 'package:e_com_wscube/constants/image_url_constant.dart';
import 'package:e_com_wscube/screens/cart.dart';
import 'package:e_com_wscube/screens/product_page.dart';
import 'package:e_com_wscube/widgets/dot_indicator.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  List<String> imgArray = [
    "https://images.unsplash.com/photo-1509695507497-903c140c43b0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1473&q=80",
    "https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGVjb21hcmNlJTIwcHJvZHVjdCUyMGltYWdlcyUyMGxhbnNjYXBlfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1595341888016-a392ef81b7de?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1479&q=80",
    "https://plus.unsplash.com/premium_photo-1684952850890-08b775d7bc2e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1631&q=80",
    "https://images.unsplash.com/photo-1542272604-787c3835535d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8amVhbnN8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=400&q=60",
    "https://images.unsplash.com/photo-1525547719571-a2d4ac8945e2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1528&q=80",
    "https://images.unsplash.com/photo-1567581935884-3349723552ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1374&q=80",
  ];
  List<Map<String, dynamic>> categoryArray = [
    {
      'catName': 'Shoes',
      'imgUrl':
          "https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGVjb21hcmNlJTIwcHJvZHVjdCUyMGltYWdlcyUyMGxhbnNjYXBlfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60",
    },
    {
      'catName': 'Beauty',
      'imgUrl':
          "https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGVjb21hcmNlJTIwcHJvZHVjdCUyMGltYWdlcyUyMGxhbnNjYXBlfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60",
    },
    {
      'catName': "Women's Fashion",
      'imgUrl':
          "https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGVjb21hcmNlJTIwcHJvZHVjdCUyMGltYWdlcyUyMGxhbnNjYXBlfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60",
    },
    {
      'catName': "Jewelry",
      'imgUrl':
          "https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGVjb21hcmNlJTIwcHJvZHVjdCUyMGltYWdlcyUyMGxhbnNjYXBlfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60",
    },
    {
      'catName': "Men's Fashion",
      'imgUrl':
          "https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGVjb21hcmNlJTIwcHJvZHVjdCUyMGltYWdlcyUyMGxhbnNjYXBlfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60",
    },
    {
      'catName': "Men's Fashion",
      'imgUrl':
          "https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGVjb21hcmNlJTIwcHJvZHVjdCUyMGltYWdlcyUyMGxhbnNjYXBlfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60",
    },
    {
      'catName': "Men's Fashion",
      'imgUrl':
          "https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGVjb21hcmNlJTIwcHJvZHVjdCUyMGltYWdlcyUyMGxhbnNjYXBlfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60",
    },
    {
      'catName': "Men's Fashion",
      'imgUrl':
          "https://images.unsplash.com/photo-1572635196237-14b3f281503f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fGVjb21hcmNlJTIwcHJvZHVjdCUyMGltYWdlcyUyMGxhbnNjYXBlfGVufDB8fDB8fHww&auto=format&fit=crop&w=400&q=60",
    },
  ];

  List<Map<String, dynamic>> specialArray = [
    {
      "imageUrl": "${ImageUrlConstant.wirelessHeadPhone}",
      "title": "Wireless Headphones",
      "price": 120,
      "color": [Colors.black, Colors.lightBlue, ColorConstants.orange]
    },
    {
      "imageUrl": "${ImageUrlConstant.womansSweater}",
      "title": "Womans Sweater",
      "price": 120,
      "color": [Colors.grey, Colors.lightBlue, ColorConstants.orange]
    },
    {
      "imageUrl": "${ImageUrlConstant.wirelessHeadPhone}",
      "title": "Wireless Headphones",
      "price": 120,
      "color": [Colors.black, Colors.lightBlue, ColorConstants.orange]
    },
    {
      "imageUrl": "${ImageUrlConstant.womansSweater}",
      "title": "Womans Sweater",
      "price": 120,
      "color": [Colors.grey, Colors.lightBlue, ColorConstants.orange]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 2,
        backgroundColor: Colors.transparent,
        color: ColorConstants.orange,
        buttonBackgroundColor: ColorConstants.orange,
        height: 70,
        onTap: (value) {
          if (value == 3) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const Cart(),
            ));
          }
        },
        items: [
          Icon(
            Icons.widgets_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          Icon(
            Icons.arrow_circle_up_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          Icon(
            Icons.account_circle_outlined,
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorConstants.grayLight,
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.apps,
                          size: 30,
                          color: ColorConstants.black,
                        )),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorConstants.grayLight,
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_outlined,
                          size: 30,
                          color: ColorConstants.black,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // Search bar
              SizedBox(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search_outlined),
                    hintText: "Search...",
                    hintStyle: const TextStyle(
                      color: ColorConstants.gray,
                      fontWeight: FontWeight.bold,
                    ),
                    prefixIconColor: ColorConstants.gray,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            '|',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorConstants.gray,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.air_outlined,
                            color: ColorConstants.black,
                          ),
                        ],
                      ),
                    ),
                    filled: true,
                    fillColor: ColorConstants.grayLight,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              // carousal image
              Stack(
                children: [
                  CarouselSlider.builder(
                    itemCount: imgArray.length,
                    itemBuilder: (context, index, realIndex) {
                      return SizedBox(
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            imgArray[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          activeIndex = index;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Positioned(
                    bottom: 7,
                    left: 160,
                    child: buildIndicator(activeIndex, imgArray.length),
                  ),
                  Positioned(
                    top: 15,
                    left: 20,
                    child: Container(
                        width: 180,
                        height: 120,
                        child: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: "Super Sale ",
                            style: TextStyle(
                              fontSize: 35,
                              color: ColorConstants.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                              text: "Discount",
                              style: TextStyle(
                                fontSize: 35,
                                color: ColorConstants.black,
                                fontWeight: FontWeight.w500,
                              )),
                          TextSpan(
                              text: "\nup to",
                              style: TextStyle(
                                fontSize: 20,
                                color: ColorConstants.black,
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(
                              text: " 50%",
                              style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w900,
                                color: ColorConstants.black,
                              )),
                        ]))),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorConstants.orange,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      onPressed: () {},
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              //  Category
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: categoryArray
                      .map((e) => Container(
                            margin: const EdgeInsets.all(5),
                            height: 100,
                            // color: Colors.red,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.network(
                                      e['imgUrl'],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  // color: Colors.blue,
                                  width: 60,
                                  child: Text('${e['catName']}'),
                                )
                              ],
                            ),
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //  Special for you
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Special For You',
                    style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        color: ColorConstants.gray,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GridView.builder(
                padding: const EdgeInsets.all(0),
                shrinkWrap: true,
                itemCount: specialArray.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 9 / 12,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProductPage(),
                      ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorConstants.grayLight,
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                              specialArray[index]['imageUrl'].toString()),
                          Positioned(
                            bottom: 40,
                            left: 25,
                            child: Text(
                              '${specialArray[index]['title']}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            left: 25,
                            child: SizedBox(
                              width: 140,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$${specialArray[index]['price']}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 60,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children:
                                          (specialArray[index]['color'] as List)
                                              .map((e) => Container(
                                                    width: 13,
                                                    height: 13,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: e),
                                                  ))
                                              .toList(),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                              right: 0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    bottomLeft: Radius.circular(15)),
                                child: Container(
                                  alignment: Alignment.center,
                                  clipBehavior: Clip.none,
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: ColorConstants.orange),
                                  child: Icon(
                                    Icons.favorite_outline,
                                    color: Colors.white,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  // Widget buildIndicator(int activeIndex, int count) {
  //   return AnimatedSmoothIndicator(
  //     activeIndex: activeIndex,
  //     count: count,
  //     effect: ExpandingDotsEffect(
  //       dotWidth: 5,
  //       dotHeight: 5,
  //       dotColor: ColorConstants.black,
  //       activeDotColor: ColorConstants.black,
  //       spacing: 4,
  //       paintStyle: PaintingStyle.stroke,
  //       strokeWidth: 1.5,
  //     ),
  //   );
  // }
}
