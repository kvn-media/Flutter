import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_day3/widget/column_widget.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.refresh))],
          title: Text('Enigma Apps'),
        ),
        body: ListView(
          children: [
            ListTile(
              leading: CircleAvatar(),
              title: Text('Muhammad Kevin'),
              subtitle: Text(
                  'Pintu diujung tangganya sudah terbuka, sebuah ruang penyimpanan, lebih besar dari yang sebelumnya. Dengan jendela besar, mengarah ke utara, sehingga cahaya Solus yang sudah terbenam bisa masuk melaluinya, dan lebih terang dari ruangan kecil sebelumnya. Banyak rak dan armor disekitarnya dan dindingnya kosong Saat vila ini disegel, hartanya juga sudahdibawa semua. Pintu yang Ronye tendang terhalangi rak besar, dan sulit untuk melihat dibaliknya'),
              trailing: Text('10:10 PM'),
            )
          ],
        ),
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Container(
        //       width: 50,
        //       height: 50,
        //       color: Colors.red,
        //     ),
        //     Container(
        //       width: 50,
        //       height: 50,
        //       color: Colors.deepOrange,
        //     ),
        //     Container(
        //       width: 50,
        //       height: 50,
        //       color: Colors.amberAccent,
        //     ),
        //     Row(
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.purple,
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.redAccent,
        //         ),
        //         Container(
        //           width: 100,
        //           height: 100,
        //           color: Colors.deepOrange,
        //         ),
        //       ],
        //     ),
        //     Stack(
        //       children: [
        //         Container(
        //           width: 300,
        //           height: 300,
        //           color: Colors.amberAccent,
        //         ),
        //         Container(
        //           width: 300,
        //           height: 300,
        //           color: Colors.lightGreen,
        //         ),
        //         Container(
        //           width: 300,
        //           height: 300,
        //           color: Colors.black,
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
        // body: Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //       Text(
        //         'Skills',
        //           style: GoogleFonts.pacifico(
        //           fontSize: 30, fontWeight: FontWeight.w700),
        //         ),
        //         Container(
        //           margin: EdgeInsets.all(20),
        //           padding: EdgeInsets.all(50),
        //           decoration: BoxDecoration(
        //             // boxShadow: [
        //             //   BoxShadow(
        //                   color: Colors.black12,
        //                // blurRadius: 5
        //           //   )
        //           // ],
        //           ),
        //             child: Row(
        //               children: [
        //               Text('data'),
        //         ],
        //       ),
        //     )
        //   ],
        //  )
        // ),
      ),
    );
  }
}
