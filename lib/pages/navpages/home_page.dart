import 'package:flutter/material.dart';
import 'package:movie_app/widgets/textSeeMore.dart';

import '../../constants/constants.dart';

//Image.asset('assets/images/man.png')
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 4, vsync: this);
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu_rounded, color: Colors.white),
                    Row(
                      children: [
                        Text(
                          'Makgul',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: Colors.blue),
                        ),
                        Text(
                          '_Movie',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(color: Colors.orange),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      child: Image.asset(
                        MovieConstants.homepageAvatarImage,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              //_searchBar(context),
              TextField(
                  decoration: InputDecoration(
                fillColor: Color.fromARGB(255, 73, 73, 73),
                labelStyle: TextStyle(color: Colors.grey),
                filled: true,
                hoverColor: Colors.grey,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: 'Search for Movie...',
                hintStyle: TextStyle(color: Colors.black45),
              )),
              SizedBox(height: 20),
              Container(
                height: 40,
                child: TabBar(
                    indicator: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20)),
                    labelColor: Colors.white,
                    isScrollable: true,
                    unselectedLabelColor: Colors.grey,
                    controller: _tabController,
                    tabs: const [
                      Tab(text: 'Action'),
                      Tab(text: 'Horor'),
                      Tab(text: 'Comedy'),
                      Tab(text: 'Romantic'),
                    ]),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: SizedBox(
                  height: 600,
                  width: double.maxFinite,
                  child: TabBarView(controller: _tabController, children: [
                    MainTamplate(),
                    MainTamplate(),
                    MainTamplate(),
                    MainTamplate(),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


























































































































  

  Padding _searchBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20),
      child: Stack(children: [
        Center(
          child: Container(
            height: 45,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(255, 39, 38, 43),
            ),
          ),
        ),
        const TextField(
          decoration: InputDecoration(
              labelStyle: TextStyle(color: Colors.grey),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color.fromARGB(255, 39, 38, 43),
              )),
              prefixIcon: Icon(Icons.search),
              hintText: 'Search for Movie...'),
        )
      ]),
    );
  }
}

class MainTamplate extends StatelessWidget {
  const MainTamplate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20),
        textSeeMore(text: MovieConstants.hPagefilmSectorHollywood),
        SizedBox(height: 20),
        movie(),
        SizedBox(height: 20),
        textSeeMore(text: MovieConstants.hPagefilmSectorBollywood),
        SizedBox(height: 20),
        downMovie(),
      ],
    );
  }
}

class downMovie extends StatelessWidget {
  const downMovie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          hollywoodCardone(
              image: MovieConstants.hPageImageAdvertFury,
              movieName: MovieConstants.hPageAdvertTitleThree),
          SizedBox(
            width: 20,
          ),
          hollywoodCardone(
              image: MovieConstants.hPageImageAdvertJhonWick,
              movieName: MovieConstants.hPageAdvertTitleFour),
          SizedBox(
            width: 20,
          ),
          
        ],
      ),
    );
  }
}

class movie extends StatelessWidget {
  const movie({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          hollywoodCard(
              image: MovieConstants.hPageImageAdvertEnderGame,
              movieName: MovieConstants.hPageAdvertTitleOne),
          hollywoodCard(
              image: MovieConstants.filmEnderGameImageOne,
              movieName: MovieConstants.hPageAdvertTitleTwo),
         
        ],
      ),
    );
  }
}

class hollywoodCard extends StatelessWidget {
  const hollywoodCard({
    Key? key,
    required this.image,
    required this.movieName,
  }) : super(key: key);
  final String image;
  final String movieName;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 4.5,
                width: MediaQuery.of(context).size.width / 1.3,
              ),
            ),
            advertTitle(text: movieName),
            advertDate(),
            rateAndView(),
            orangePlayButton()
          ],
        ));
  }
}

class rateAndView extends StatelessWidget {
  const rateAndView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 20,
      child: Row(
        children: [
          starIcon(),
          SizedBox(width: 8),
          rate(),
          SizedBox(width: 20),
          Text(
            'View (23m)',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.white70, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class rate extends StatelessWidget {
  const rate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '(4.9)',
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.white70, fontWeight: FontWeight.bold),
    );
  }
}

class starIcon extends StatelessWidget {
  const starIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.amber,
      size: 20,
    );
  }
}

class orangePlayButton extends StatelessWidget {
  const orangePlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 250,
      child: CircleAvatar(
        maxRadius: 20,
        backgroundColor: Colors.orange,
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.play_circle_outline_rounded,
              color: Colors.white,
            )),
      ),
    );
  }
}

class advertDate extends StatelessWidget {
  const advertDate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 20,
      child: Column(
        children: [
          Text(
            '2020 / 2 h 32 min',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class advertTitle extends StatelessWidget {
  const advertTitle({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 20,
      child: Column(
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class RowClipRRectAdvertImage extends StatelessWidget {
  const RowClipRRectAdvertImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
        height: MediaQuery.of(context).size.height / 4.5,
        width: MediaQuery.of(context).size.width / 1.3,
      ),
    );
  }
}

class hollywoodCardone extends StatelessWidget {
  const hollywoodCardone({
    Key? key,
    required this.image,
    required this.movieName,
  }) : super(key: key);
  final String image;
  final String movieName;
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: MediaQuery.of(context).size.height / 3.8,
                width: MediaQuery.of(context).size.width / 2.4,
              ),
            ),
            advertTitleOne(text: movieName),
            Positioned(
              bottom: 25,
              left: 10,
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  rate(),
                ],
              ),
            ),
            orangePlayButtonOne()
          ],
        ));
  }
}

class advertTitleOne extends StatelessWidget {
  const advertTitleOne({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 50,
      left: 10,
      child: Column(
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class orangePlayButtonOne extends StatelessWidget {
  const orangePlayButtonOne({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      left: 120,
      child: CircleAvatar(
        maxRadius: 19,
        backgroundColor: Colors.orange,
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.play_circle_outline_rounded,
              color: Colors.white,
            )),
      ),
    );
  }
}
