import 'package:cofe_app/domain/views/card_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Carrinho',
          style: GoogleFonts.baloo2(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const CardView3(),
            const CardView3(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .407,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(-4, -4),
                      blurRadius: 16,
                      color: Colors.black.withOpacity(.08))
                ],
              ),
              height: MediaQuery.sizeOf(context).height * .187,
              padding: const EdgeInsets.symmetric(
                horizontal: 28,
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Valor total',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF403937)),
                      ),
                      Text(
                        'R\$ 9,90',
                        style: GoogleFonts.baloo2(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.sizeOf(context).width, 50),
                      backgroundColor: const Color(0xFFC47F17),
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                    ),
                    child: const Text(
                      'confirmar pedido',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
