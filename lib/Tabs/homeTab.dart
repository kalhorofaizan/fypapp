import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:fypapp/widgets/ServiceItemCard.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<_NewsCard> newslist = [
    _NewsCard(itemNumber: 'assets/images/webNews.jpg',),
    _NewsCard(itemNumber: 'assets/images/twitterNews.jpg',),
    _NewsCard(itemNumber: 'assets/images/instaNews.jpg',),
    _NewsCard(itemNumber: 'assets/images/facebookNews.jpg',),
    _NewsCard(itemNumber: 'assets/images/webNews.jpg',),
    _NewsCard(itemNumber: 'assets/images/twitterNews.jpg',),
    _NewsCard(itemNumber: 'assets/images/instaNews.jpg',),
    _NewsCard(itemNumber: 'assets/images/facebookNews.jpg',),
    _NewsCard(itemNumber: 'assets/images/instaNews.jpg',),
    _NewsCard(itemNumber: 'assets/images/facebookNews.jpg',),
  ];
  @override
  Widget build(BuildContext context) {

    return Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
            child: Image.asset(
              'assets/images/home_show_image.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration:
                              InputDecoration(hintText: "Search any thing"),
                            ),
                          )
                        ],
                      ),
                      color: Colors.white,
                      padding: EdgeInsets.only(left: 10),
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.center,
                      child: Text(
                        "Instant digital access to many services, all in one place",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 25),
                    Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "-Frequently used-",
                                style: TextStyle(color: Colors.black45),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.directions_bus,
                                          color: Colors.blue,
                                        ),
                                        Text("Transport")
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.healing,
                                          color: Colors.blue,
                                        ),
                                        Text("Health")
                                      ],
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: Column(
                                      children: [
                                        Icon(
                                          Icons.security,
                                          color: Colors.blue,
                                        ),
                                        Text("Security")
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text("Trending on",
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      alignment: Alignment.centerLeft,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CarouselSlider.builder(
                        options: CarouselOptions(
                          initialPage: 1,
                          height: 100,
                          viewportFraction: 1,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          disableCenter: false,
                        ),
                        itemCount: newslist.length~/2,
                        itemBuilder:(context,i){
                          return  Row(
                            children: [newslist[i*2], newslist[i*2+1]],
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                          );
                        }
                    ),
                    Container(
                      padding: EdgeInsets.all( 10),
                      child: Row(
                        children: [
                          Text("All Services",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Spacer(),
                          Text("More",style: TextStyle(color: Colors.blue),)
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        ServicesItemCard(),
                        ServicesItemCard(),
                      ],
                    ),
                    Row(
                      children: [
                        ServicesItemCard(),
                        ServicesItemCard(),
                      ],
                    )
                  ],
                ),
              ))
        ],
    );
  }
}
class _NewsCard extends StatelessWidget {
  final String itemNumber;

  const _NewsCard({this.itemNumber});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(itemNumber),
            fit: BoxFit.fill
          )
      ),
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.45,
      child: Column(
        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            "Government Announce tex on Electricity",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Row(
            children: [
              Text(
                "nov 15,2020 ",
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Icon(
                Icons.electrical_services,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}

