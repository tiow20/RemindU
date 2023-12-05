import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Container(
                        child: Icon(Icons.indeterminate_check_box_sharp, color: Colors.green,),
                        decoration: BoxDecoration(color: Colors.white, 
                        borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Tugas", 
                            style: GoogleFonts.montserrat( color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),), 
                          SizedBox(height: 10,),
                          Text("12",
                          style: GoogleFonts.montserrat( color: Colors.white, fontSize: 15),
                          ),
                        ],
                      )
                    ],),
                    Row(children: [
                      Container(
                        child: Icon(Icons.indeterminate_check_box_sharp, color: Colors.red,),
                        decoration: BoxDecoration(color: Colors.white, 
                        borderRadius: BorderRadius.circular(8)),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Aktivitas", 
                            style: GoogleFonts.montserrat( color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),), 
                          SizedBox(height: 10,),
                          Text("3",
                          style: GoogleFonts.montserrat( color: Colors.white, fontSize: 15),
                          ),
                        ],
                      )
                    ],)
                  ],

                ),
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.grey[600],
                  borderRadius: BorderRadius.circular(16)
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 10,
                child: ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    
                    children: [
                      Icon(Icons.check_box)
                    ],
                  ),
                  title: Text("Buat tugas"),
                  subtitle: Text("jam 12"),
                  leading: Container(
                          child: Icon(Icons.indeterminate_check_box_outlined, color: Colors.green,),
                            decoration: BoxDecoration(color: Colors.white, 
                            borderRadius: BorderRadius.circular(8)),
                          ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 10,
                child: ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    
                    children: [
                      Icon(Icons.check_box)
                    ],
                  ),
                  title: Text("Buat tugas"),
                  subtitle: Text("tugas 1"),
                  leading: Container(
                            child: Icon(Icons.indeterminate_check_box_outlined, color: Colors.green,),
                            decoration: BoxDecoration(color: Colors.white, 
                            borderRadius: BorderRadius.circular(8)),
                          ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 10,
                child: ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    
                    children: [
                      Icon(Icons.check_box)
                    ],
                  ),
                  title: Text("Buat tugas"),
                  subtitle: Text("jam 12"),
                  leading: Container(
                            child: Icon(Icons.indeterminate_check_box_outlined, color: Colors.green,),
                            decoration: BoxDecoration(color: Colors.white, 
                            borderRadius: BorderRadius.circular(8)),
                          ),
                ),
              ),
            ),
          ],
          )
        ),
    );
  }
}