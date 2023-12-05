import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}
class _ListPageState extends State<ListPage> {
  bool isExpense = true;

  void openDialog(){
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: Center(child: Column(
            children: [
              Text(
                (isExpense) ? "Tambah Aktivitas" : "Tambah Tugas"
                , style: GoogleFonts.montserrat(fontSize: 18, color: (isExpense) ? Colors.red : Colors.blue ),),
              SizedBox(height: 10,),
              TextFormField(
                decoration: InputDecoration(border: OutlineInputBorder(), hintText: "Name"),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text ("Save") )
            ],
          ),),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
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
              IconButton(onPressed: (){
                openDialog();
              }, icon: Icon(Icons.add))
          ],
        
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10,
            child: ListTile(
              leading: (isExpense) ? Icon(Icons.indeterminate_check_box_sharp, color: Colors.red,) : Icon(Icons.indeterminate_check_box_sharp, color: Colors.green,),
              title: Text('Tugas 1'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                  SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit))
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10,
            child: ListTile(
              leading: (isExpense) ? Icon(Icons.indeterminate_check_box_sharp, color: Colors.red,) : Icon(Icons.indeterminate_check_box_sharp, color: Colors.green,),
              title: Text('Tugas 1'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                  SizedBox(width: 10,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.edit))
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}