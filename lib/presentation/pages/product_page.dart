import 'package:cofe_app/domain/models/card_model.dart';
import 'package:cofe_app/presentation/pages/cart_page.dart';
import 'package:cofe_app/presentation/pages/delivery_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductPage extends StatefulWidget {
  final CardModel coffee;

  const ProductPage({super.key, required this.coffee});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int currentIndex = -1;
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xFF272221),
        leadingWidth: 87,
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (builder) => const CartPage(),
              ),
            ),
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.deepPurple.shade400,
            ),
          ),
          const SizedBox(width: 23),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              Expanded(
                flex: 7,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  color: const Color(0xFF272221),
                  width: MediaQuery.sizeOf(context).width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            color: Color(0xFF403937),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 13, vertical: 6),
                        child: Text(
                          widget.coffee.type,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.coffee.name,
                            style: GoogleFonts.baloo2(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "\$ ${widget.coffee.price}0",
                            style: GoogleFonts.baloo2(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFFDBAC2C),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        widget.coffee.desc,
                        style: const TextStyle(
                            fontSize: 16, color: Color(0xFFD7D5D5)),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 48),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Selecione o tamanho:",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF8D8686),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = 0;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 43,
                              width: 100,
                              decoration: BoxDecoration(
                                color: currentIndex == 0
                                    ? Colors.white
                                    : const Color(0xFFEDEDED),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(6),
                                ),
                                border: Border.all(
                                  style: currentIndex == 0
                                      ? BorderStyle.solid
                                      : BorderStyle.none,
                                  color: currentIndex == 0
                                      ? Colors.deepPurple
                                      : Colors.red,
                                ),
                              ),
                              child: Text(
                                '114ml',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: currentIndex == 0
                                      ? Colors.deepPurple
                                      : const Color(0xFF574F4D),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = 1;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 43,
                              width: 100,
                              decoration: BoxDecoration(
                                color: currentIndex == 1
                                    ? Colors.white
                                    : const Color(0xFFEDEDED),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(6),
                                ),
                                border: Border.all(
                                  style: currentIndex == 1
                                      ? BorderStyle.solid
                                      : BorderStyle.none,
                                  color: currentIndex == 1
                                      ? Colors.deepPurple
                                      : Colors.red,
                                ),
                              ),
                              child: Text(
                                '140ml',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: currentIndex == 1
                                      ? Colors.deepPurple
                                      : const Color(0xFF574F4D),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex = 2;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 43,
                              width: 100,
                              decoration: BoxDecoration(
                                color: currentIndex == 2
                                    ? Colors.white
                                    : const Color(0xFFEDEDED),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(6),
                                ),
                                border: Border.all(
                                  style: currentIndex == 2
                                      ? BorderStyle.solid
                                      : BorderStyle.none,
                                  color: currentIndex == 2
                                      ? Colors.deepPurple
                                      : Colors.red,
                                ),
                              ),
                              child: Text(
                                '227ml',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: currentIndex == 2
                                      ? Colors.deepPurple
                                      : const Color(0xFF574F4D),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 16),
                        height: 70,
                        width: MediaQuery.sizeOf(context).width,
                        decoration: const BoxDecoration(
                          color: Color(0xFFEDEDED),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (counter > 1) {
                                      counter--;
                                    }
                                  });
                                },
                                icon: const Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Colors.deepPurple,
                                )),
                            Text(
                              counter.toString(),
                              style: const TextStyle(
                                fontSize: 20,
                                color: Color(0xFF272221),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    counter++;
                                  });
                                },
                                icon: const Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.deepPurple,
                                )),
                            ElevatedButton(
                              onPressed: () => Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => const DeliveryPage(),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(140, 50),
                                backgroundColor: Colors.deepPurple,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(6),
                                  ),
                                ),
                              ),
                              child: Text(
                                "ADICIONAR",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white.withOpacity(.9),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Animate(
            effects: const [
              SlideEffect(
                  duration: Duration(seconds: 1), curve: Curves.elasticOut)
            ],
            child: const Padding(
              padding: EdgeInsets.only(top: 237),
              child: Image(
                image: AssetImage('assets/images/product_coffee.png'),
              ),
            ),
          ),
          Draggable(
            feedback: Container(
              color: Colors.deepOrange,
              height: 100,
              width: 100,
              child: const Icon(Icons.directions_run),
            ),
            childWhenDragging: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.pinkAccent,
              child: const Center(
                child: Text('Child When Dragging'),
              ),
            ),
            child: Animate(
              effects: const [
                SlideEffect(
                    duration: Duration(seconds: 1), curve: Curves.elasticOut)
              ],
              child: const Padding(
                padding: EdgeInsets.only(top: 185),
                child: Image(
                  height: 155,
                  image: AssetImage('assets/images/coffee_smoke.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
