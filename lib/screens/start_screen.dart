import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quote_generator_app/screens/quote_screen.dart';


class StartScreen extends StatelessWidget{
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
      gradient: LinearGradient(colors: [
        Color.fromARGB(255, 37, 37, 37),
        Color.fromARGB(255, 13, 13, 13)
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           Image.asset('assets/logo.png',
           width: 150,
           color: const Color.fromARGB(160, 255, 255, 255),
          


           ),
           const SizedBox(height: 6,),
          TextButton(onPressed: (){
          Navigator.push(context,
           MaterialPageRoute(builder: (context) => const QuoteScreen(),)
          );
          }, child: Text('Get Quote',
          style: GoogleFonts.montserrat(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500
          ),
          ),
          
            )
          
        ],),
      ),
      );
       
      
    
  }
}