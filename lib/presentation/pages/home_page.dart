import 'package:carousel_slider/carousel_slider.dart';
import 'package:cofe_app/domain/models/card_model.dart';
import 'package:cofe_app/domain/views/card_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        primary: true,
        child: Stack(
          children: [
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.sizeOf(context).height * .41,
                    width: MediaQuery.sizeOf(context).width,
                    color: const Color(0xFF272221),
                    child: Stack(
                      children: [
                        const Align(
                          alignment: FractionalOffset(.96, .875),
                          child: Image(
                            image: AssetImage("assets/images/coffee.png"),
                            height: 80,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 38.0, left: 25, right: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Image(
                                    image: AssetImage('assets/images/map.png'),
                                    color: Colors.deepPurpleAccent,
                                    height: 20,
                                  ),
                                  const SizedBox(width: 3),
                                  Text(
                                    "Porto Alegre, RS",
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleSmall
                                        ?.copyWith(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.sizeOf(context).width * .426,
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.shopping_cart,
                                      color: Colors.deepOrange.shade300,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.sizeOf(context).height * .01,
                              ),
                              Text(
                                "Encontre o café perfeito para qualquer hora do dia",
                                style: GoogleFonts.alike(
                                  color: Colors.white,
                                  fontSize: 23,
                                ),
                              ),
                              const SizedBox(height: 18),
                              const SizedBox(
                                height: 52,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)))),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * .28,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nossos cafés',
                            style: GoogleFonts.baloo2(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          SizedBox(
                            height: 32,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      currentIndex = 0;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: currentIndex == 0
                                        ? Colors.deepPurple
                                        : Colors.white,
                                    padding: const EdgeInsets.all(10),
                                    shape: const StadiumBorder(),
                                  ),
                                  child: Text(
                                    'TRADICIONAIS',
                                    style: TextStyle(
                                      color: currentIndex == 0
                                          ? Colors.white
                                          : Colors.deepPurple,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      currentIndex = 1;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: currentIndex == 1
                                        ? Colors.deepPurple
                                        : Colors.white,
                                    padding: const EdgeInsets.all(10),
                                    shape: const StadiumBorder(),
                                  ),
                                  child: Text(
                                    'DOCES',
                                    style: TextStyle(
                                      color: currentIndex == 1
                                          ? Colors.white
                                          : Colors.deepPurple,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      currentIndex = 2;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: currentIndex == 2
                                        ? Colors.deepPurple
                                        : Colors.white,
                                    padding: const EdgeInsets.all(10),
                                    shape: const StadiumBorder(),
                                  ),
                                  child: Text(
                                    'ESPECIAIS',
                                    style: TextStyle(
                                      color: currentIndex == 2
                                          ? Colors.white
                                          : Colors.deepPurple,
                                      fontSize: 9,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tradicianais",
                                style: GoogleFonts.baloo2(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF8D8686),
                                ),
                              ),
                              const SizedBox(height: 15),
                              for (final e in cardTradicionais)
                                CardView2(card: e),
                              const SizedBox(height: 35),
                              Text(
                                "Doces",
                                style: GoogleFonts.baloo2(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF8D8686),
                                ),
                              ),
                              const SizedBox(height: 15),
                              for (final e in cardDoces) CardView2(card: e),
                              const SizedBox(height: 35),
                              Text(
                                "Especiais",
                                style: GoogleFonts.baloo2(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: const Color(0xFF8D8686),
                                ),
                              ),
                              const SizedBox(height: 15),
                              for (final e in cardEspeciais) CardView2(card: e),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.sizeOf(context).height * .3),
              child: SizedBox(
                height: 323,
                child: CarouselSlider.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index, realIndex) {
                    return list[index];
                  },
                  options: CarouselOptions(
                    enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                    clipBehavior: Clip.none,
                    height: 300,
                    viewportFraction: 0.6,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List list = [
  CardView(
    card: CardModel(
      type: 'TRADITIONAL',
      name: 'Latte',
      desc:
      'Café expresso com o dobro de leite e espuma cremosa',
      price: 9.90,
      image: 'assets/images/latte.png',
    ),
  ),
  CardView(
    card: CardModel(
      type: 'DOCE',
      name: 'Moccacino',
      desc:
      'Café expresso com calda de chocolate, leite e espuma',
      price: 9.90,
      image: 'assets/images/moccacino.png',
    ),
  ),
  CardView(
    card: CardModel(
      type: 'ECPECIAL',
      name: 'Irlandés',
      desc: 'Bebida a base de café, uísque irlandês, açúcar',
      price: 9.90,
      image: 'assets/images/irlandes.png',
    ),
  ),
];