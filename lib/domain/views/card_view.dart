import 'package:cofe_app/domain/models/card_model.dart';
import 'package:cofe_app/presentation/pages/product_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';

class CardView extends StatelessWidget {
  final CardModel card;

  const CardView({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (builder) => ProductPage(
            coffee: card,
          ),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            height: 233,
            width: 168,
            decoration: const BoxDecoration(
              color: Color(0xFFEDEDED),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(36),
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(6),
                topLeft: Radius.circular(6),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Transform.scale(
                  scale: 3.1,
                  child: Image(
                    image: AssetImage(card.image),
                    width: 30,
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * .032),
                FilledButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(90, 26),
                      maximumSize: const Size(90, 26),
                      padding: EdgeInsets.zero,
                      backgroundColor:
                          Colors.deepPurple.shade100.withOpacity(.4)),
                  child: Text(
                    card.type,
                    style: const TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 9,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "${card.name}\n",
                        style: GoogleFonts.baloo2(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: "${card.desc}\n",
                        style: const TextStyle(
                          color: Color(0xFF8D8686),
                          fontSize: 10,
                        ),
                      ),
                      TextSpan(
                        text: "\nR\$ ",
                        style: TextStyle(
                          color: const Color(0xFFC47F17).withOpacity(.9),
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: card.price.toString(),
                        style: const TextStyle(
                          color: Color(0xFFC47F17),
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardView2 extends StatelessWidget {
  final CardModel card;

  const CardView2({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (builder) => ProductPage(
                coffee: card,
              ))),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 20),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(36),
            bottomLeft: Radius.circular(36),
            topLeft: Radius.circular(6),
            bottomRight: Radius.circular(6),
          ),
        ),
        child: SizedBox(
          height: 140,
          child: Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Transform.scale(
                    scale: 2,
                    child: Image(
                      height: 50,
                      image: AssetImage(card.image),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      card.name,
                      style: GoogleFonts.baloo2(
                        color: const Color(0xFF403937),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      card.desc,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFF8D8686),
                      ),
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: "\nR\$ ",
                          style: TextStyle(
                            color: const Color(0xFFC47F17).withOpacity(.9),
                            fontSize: 15,
                          ),
                        ),
                        TextSpan(
                          text: card.price.toString(),
                          style: const TextStyle(
                            color: Color(0xFFC47F17),
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardView3 extends StatelessWidget {
  const CardView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        extentRatio: .26,
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (context) {},
            flex: 1,
            foregroundColor: Colors.red.shade700,
            spacing: 10,
            autoClose: true,
            backgroundColor: const Color(0xFFF2DFD8),
            icon: CupertinoIcons.delete,
          ),
        ],
      ),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(color: Color(0xFFEDEDED)),
            bottom: BorderSide(color: Color(0xFFEDEDED)),
          ),
        ),
        height: 125,
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: Image(
                image: AssetImage("assets/images/latte.png"),
                height: 70,
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Irlandes',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          'R\$ 9,90',
                          style: GoogleFonts.baloo2(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    '227ml',
                    style: TextStyle(
                      color: Color(0xFF8D8686),
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 36,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFFE6E5E5)),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.remove,
                                color: Color(0xFF8047F8),
                              ),
                            ),
                            Text(
                              '1',
                              style: GoogleFonts.baloo2(
                                fontSize: 20,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.add,
                                color: Color(0xFF8047F8),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: const Color(0xFFF3F2F2),
                          minimumSize: const Size(36, 36),
                          padding: EdgeInsets.zero,
                          maximumSize: const Size(36, 36),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: const Icon(
                          CupertinoIcons.delete,
                          size: 20,
                          color: Color(0xFF8047F8),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
