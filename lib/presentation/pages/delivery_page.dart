import 'package:cofe_app/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/delivery.png"),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "UHU! PEDIDO CONFIRMADO",
              style: GoogleFonts.baloo2(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(196, 127, 23, 1),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Agora é só aguardar que logo o café chegará até você!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.sizeOf(context).width, 60),
                  alignment: Alignment.center,
                  backgroundColor: const Color(0xFF4B2995),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "IR PARA A HOME",
                  style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
                )),
          ],
        ),
      ),
    );
  }
}
