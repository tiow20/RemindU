import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Tambah extends StatefulWidget {
  const Tambah({super.key});

  @override
  State<Tambah> createState() => _TambahState();
}

class _TambahState extends State<Tambah> {
  bool isExpense = true;
  List<String> list = ['Tugas 1', 'Tugas 2', 'Tugas 3'];
  late String dropDownValue = list.first;
  TextEditingController dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(title: Text ("Tambah")),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, 
            children: [
            Switch(
              value: isExpense, 
              onChanged: (bool value) {
                setState(() {
                  isExpense = value;
                });
              }, 
              inactiveTrackColor: Colors.blue[200],
              inactiveThumbColor: Colors.blue,
              activeColor: Colors.red,),
              Text(isExpense ? 'Aktivitas' : 'Tugas', style: GoogleFonts.montserrat(fontSize: 14),)
          ],
          ),
          SizedBox(height: 10,),
          
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Kategori : ', 
                  style: GoogleFonts.montserrat(fontSize: 16),),
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal : 16),
            child: DropdownButton<String>(
              value: dropDownValue,
              isExpanded: true,
              icon: Icon(Icons.arrow_downward), 
              items: list.map<DropdownMenuItem<String>>((String value){ 
                return DropdownMenuItem<String>(
                  value: value, 
                  child: Text(value),);
                  }).toList(), onChanged: (String? value){}),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(), labelText: "Catatan"
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              readOnly: true,
              controller: dateController,
              decoration: InputDecoration(
                labelText: "Jatuh Tempo"),
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context, 
                    initialDate: DateTime.now(), 
                    firstDate: DateTime(2000), 
                    lastDate: DateTime(2099));
                  if (pickedDate != null){
                    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
          
                    dateController.text = formattedDate;
                  }
                },),
          ),
          SizedBox( height: 25,),
          Center(child: ElevatedButton(onPressed: (){}, child: Text("Save")))
            ],
          ) ),
      ),);
  }
}