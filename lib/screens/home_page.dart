import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_com_wscube/constants/color_constants.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
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
              height: 20,
            ),
            TextField(
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
            const SizedBox(
              height: 20,
            ),
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
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoryArray
                    .map((e) => Container(
                          margin: const EdgeInsets.all(5),
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
                                height: 20,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 60,
                                child: Text('${e['catName']}'),
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator(int activeIndex, int count) {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: count,
      effect: ExpandingDotsEffect(
        dotWidth: 5,
        dotHeight: 5,
        dotColor: ColorConstants.black,
        activeDotColor: ColorConstants.black,
        spacing: 4,
        paintStyle: PaintingStyle.stroke,
        strokeWidth: 1.5,
      ),
    );
  }
}
