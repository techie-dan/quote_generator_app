import 'package:flutter/material.dart';
import 'package:quote_generator_app/data/quote.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';
int randomQuote = Random().nextInt(quote.length);

class QuoteScreen extends StatelessWidget{
  
 const  QuoteScreen({super.key});
 String getHourOfTheDay(){
   int currentHour = DateTime.now().hour;
   String? currentImage;
   if (currentHour >= 0 && currentHour < 12){
     return currentImage = 'assets/images/morning.jpg';
   }
   else if (currentHour >= 12 && currentHour < 18){
    return currentImage = 'assets/images/afternoon.jpg';
   }
    else if (currentHour >= 18 && currentHour <= 23){
      return currentImage = 'assets/images/night.jpg';
   }
   return currentImage!;
 }
  @override
  Widget build( context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:
          AssetImage(getHourOfTheDay(),
    
          
          ),
          
           
          fit: BoxFit.cover,
          
          )
        ),
        child: Container(
          margin: const EdgeInsets.only(right: 20,left: 10),
          child: Center(
            child:   Column(
              mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(quote[randomQuote].quoteText,
                 style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                 ),
                 textAlign: TextAlign.right,
                ),
                const SizedBox(height: 6),
                Text(quote[randomQuote].author,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                                 
                
                )
              ],
            )
            
          ),
        )
      ),
    );
   
  }
}