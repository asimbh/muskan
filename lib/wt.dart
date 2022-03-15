import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muskan1/dash.dart';
import 'package:muskan1/setting.dart';

class wt extends StatelessWidget {
  const wt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFefeef3),
        body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: IconButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => dash()));},
                icon: Icon(Icons.home, size: 30,),
              )
          ),
          SizedBox(height:40),
          Container(
            child: DataTable(
              columns: [
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Weight')),
                DataColumn(label: Text('Difference')),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text('06/03/2022')),
                  DataCell(Text('80')),
                  DataCell(Text('-1')),
                ]),
                DataRow(cells: [
                  DataCell(Text('07/03/2022')),
                  DataCell(Text('81')),
                  DataCell(Text('+1')),
                ]),
                DataRow(cells: [
                  DataCell(Text('08/03/2022')),
                  DataCell(Text('79.8')),
                  DataCell(Text('-1.2')),
                ]),
                DataRow(cells: [
                  DataCell(Text('09/03/2022')),
                  DataCell(Text('80')),
                  DataCell(Text('-0.2')),
                ]),
                DataRow(cells: [
                  DataCell(Text('11/03/2022')),
                  DataCell(Text('80')),
                  DataCell(Text('0')),
                ]),
                DataRow(cells: [
                  DataCell(Text('11/03/2022')),
                  DataCell(Text('79.5')),
                  DataCell(Text('0.5')),
                ]),
              ],
            ),
          ),
          SizedBox(height:190),
          Container(
            width: 360,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
            ),

            child: TextField(
              decoration: InputDecoration(
                  hintText: "Today's Weight" ,
                  prefixIcon: Icon(Icons.scale, color: Colors.black,),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  )
              ),
            ),
          ),
      ],


    )
    ));
  }
}
