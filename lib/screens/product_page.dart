import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_com_wscube/constants/color_constants.dart';
import 'package:e_com_wscube/constants/image_url_constant.dart';
import 'package:e_com_wscube/widgets/dot_indicator.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
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
  List<Color> colorArray = [
    Color(0xff911D30),
    Color(0xff151515),
    Color(0xff1D4491),
    Color(0xff990471E),
    Color(0xffD8D6D7),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.grayLight,
      body: Stack(
        children: [
          //dot indicator
          // Positioned(
          //   child: buildIndicator(activeIndex, 5),
          // ),
          //carousal image
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: 150,
            child: CarouselSlider.builder(
              itemCount: imgArray.length,
              itemBuilder: (context, index, realIndex) {
                return Image.asset(
                  ImageUrlConstant.wirelessHeadPhone,
                  fit: BoxFit.cover,
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
          ),
          //Header
          Positioned(
            width: MediaQuery.of(context).size.width,
            top: 70,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  Container(
                      child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        width: 40,
                        height: 40,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share_outlined,
                            size: 20,
                            color: ColorConstants.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        width: 40,
                        height: 40,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite_outline,
                            size: 20,
                            color: ColorConstants.black,
                          ),
                        ),
                      ),
                    ],
                  )),
                ],
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: buildIndicator(activeIndex, 5),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 0,
            child: Container(
              // alignment: Alignment.topLeft,
              padding: const EdgeInsets.all(20),
              // width: MediaQuery.of(context).size.width,
              height: 375,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Wireless Headphone",
                      style: TextStyle(
                          color: ColorConstants.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$520.00',
                      style: TextStyle(
                          color: ColorConstants.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'Seller: Tariqul islam',
                        style: TextStyle(
                          color: ColorConstants.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: ColorConstants.orange,
                              borderRadius: BorderRadius.circular(15)),
                          width: 40,
                          height: 17,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.white,
                                size: 10,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '4.8',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '(320 Review)',
                          style: TextStyle(
                              fontSize: 13, color: ColorConstants.gray),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Color',
                      style: TextStyle(
                          color: ColorConstants.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: colorArray
                            .map((e) => Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: e, shape: BoxShape.circle),
                                ))
                            .toList(),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ColorConstants.orange),
                          child: Text(
                            'Description',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: ColorConstants.orange,
                          ),
                          child: Text(
                            'Description',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            // color: ColorConstants.orange,
                          ),
                          child: Text(
                            'Reviews',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        'loremMollit Lorem et eiusmod amet. Officia esse ea ut deserunt velit aute elit est magna in dolor incididunt. Anim reprehenderit velit anim ipsum consequat voluptate nisi laborum enim esse voluptate. Ipsum esse velit esse ullamco magna deserunt anim do magna esse ut magna.')
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.88,
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.all(8),
                    width: 95,
                    height: 32,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                  Container(
                    width: 200,
                    height: 40,
                    // padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: ColorConstants.orange,
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
